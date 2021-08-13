#include "UnitTestFramework.h"

#include <stdlib.h>

TEST_SUITE("Suite")
{
	TEST_CASE("Test")
	{
#if defined(__x86_64__) || defined(_M_X64)
		FAIL_CHECK("x64");
#elif defined(__aarch64__) || defined(_M_ARM64)
		MESSAGE("arm64");
#endif
	}
}
