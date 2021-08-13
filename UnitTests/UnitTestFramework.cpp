#ifdef __ANDROID__
#include <android/log.h>
#include <android_native_app_glue.h>
#endif // __ANDROID__

// Emit everything needed for the main function
#define DOCTEST_CONFIG_IMPLEMENT
#define DOCTEST_CONFIG_NO_WINDOWS_SEH

#include "UnitTestFramework.h"

using namespace doctest;

#ifndef __ANDROID__

// Generic entry point
int main(int argc, char** argv)
{
	return Context(argc, argv).run(); 
}

#else // !__ANDROID__

// Reporter that writes logs to the Android log
struct LogReporter : public ConsoleReporter
{
	LogReporter(const ContextOptions &inOptions) : 
		ConsoleReporter(inOptions, mStream) 
	{
	}

#define REPORTER_OVERRIDE(func, type, arg)						\
	void func(type arg) override								\
	{															\
		ConsoleReporter::func(arg);								\
		const char *str = mStream.str().c_str();				\
		if (str[0] != 0)										\
			__android_log_write(ANDROID_LOG_INFO, "Jolt", str);	\
		mStream.str("");										\
	}

	REPORTER_OVERRIDE(test_run_start, DOCTEST_EMPTY, DOCTEST_EMPTY)
	REPORTER_OVERRIDE(test_run_end, const TestRunStats &, in)
	REPORTER_OVERRIDE(test_case_start, const TestCaseData &, in)
	REPORTER_OVERRIDE(test_case_reenter, const TestCaseData &, in)
	REPORTER_OVERRIDE(test_case_end, const CurrentTestCaseStats &, in)
	REPORTER_OVERRIDE(test_case_exception, const TestCaseException &, in)
	REPORTER_OVERRIDE(subcase_start, const SubcaseSignature &, in)
	REPORTER_OVERRIDE(subcase_end, DOCTEST_EMPTY, DOCTEST_EMPTY)
	REPORTER_OVERRIDE(log_assert, const AssertData &, in)
	REPORTER_OVERRIDE(log_message, const MessageData &, in)
	REPORTER_OVERRIDE(test_case_skipped, const TestCaseData &, in)

private:
	thread_local static std::ostringstream mStream;
};

thread_local std::ostringstream LogReporter::mStream;

DOCTEST_REGISTER_REPORTER("android_log", 0, LogReporter);

void AndroidInitialize(android_app *inApp)
{
	// Run all tests
	Context context;
	context.addFilter("reporters", "android_log");
	int return_value = context.run();

	// Color the screen according to the test result
	uint32_t color = return_value == 0? 0x00ff00 : 0x0000ff;
	ANativeWindow_acquire(inApp->window);
	ANativeWindow_Buffer buffer;
	ARect bounds;
	ANativeWindow_lock(inApp->window, &buffer, &bounds);
	switch (buffer.format)
	{
		case AHARDWAREBUFFER_FORMAT_R8G8B8A8_UNORM:
		case AHARDWAREBUFFER_FORMAT_R8G8B8X8_UNORM:
		{
			for (int y = 0; y < buffer.height; ++y)
			{
				uint32_t *dest = (uint32_t *)((uint8_t *)buffer.bits + y * buffer.stride * sizeof(uint32_t));
				for (int x = 0; x < buffer.width; ++x)
					*dest++ = color;
			}
			break;
		}

		default:
			// TODO implement
			break;
	}
	ANativeWindow_unlockAndPost(inApp->window);
	ANativeWindow_release(inApp->window);
}

// Handle callback from Android
void AndroidHandleCommand(android_app *inApp, int32_t inCmd)
{
	switch (inCmd)
	{
	case APP_CMD_INIT_WINDOW:
		AndroidInitialize(inApp);
		break;
	}
}

// Main entry point for android
void android_main(struct android_app *ioApp)
{
	ioApp->onAppCmd = AndroidHandleCommand;

	int events;
	android_poll_source *source;
	do
	{
		if (ALooper_pollAll(1, nullptr, &events, (void **)&source) >= 0 && source != nullptr)
			source->process(ioApp, source);
	} while (ioApp->destroyRequested == 0);
}

#endif // __ANDROID__
