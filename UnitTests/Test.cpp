#include "UnitTestFramework.h"

#include <thread>
#include <iostream>
#include <Core.h>
#include <TickCounter.h>
#include <mach/mach.h>
#include <mach/mach_time.h>

using namespace std;
using namespace JPH;

TEST_SUITE("Suite")
{
	TEST_CASE("Test")
	{
		uint64 start = GetProcessorTickCount();
		this_thread::sleep_for(1s);
		uint64 duration = GetProcessorTickCount() - start;
		uint64 ticks_per_sec = GetProcessorTicksPerSecond();

		cout << "duration = " << duration << "\n";
		cout << "ticks_per_sec = " << ticks_per_sec << "\n";
		cout << "seconds = " << double(ticks_per_sec) / double(duration) << "\n";

		mach_timebase_info_data_t time_base_info;
		mach_timebase_info(&time_base_info);
		cout << "denom = " << time_base_info.denom << "\n";
		cout << "numer = " << time_base_info.numer << "\n";

		CHECK(true);
	}
}
