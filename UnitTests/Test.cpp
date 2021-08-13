#include "UnitTestFramework.h"

TEST_SUITE("Suite")
{
	TEST_CASE("Test")
	{
		CHECK(true);
#ifndef JPH_DEBUG_RENDERER
		CHECK(false);
#endif
	}
}
