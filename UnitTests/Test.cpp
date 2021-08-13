#include "UnitTestFramework.h"

#include <stdlib.h>

TEST_SUITE("Suite")
{
	TEST_CASE("Test")
	{
#if __clang_major__ == 10
#warning 10
#elif __clang_major__ == 11
#warning 11
#elif __clang_major__ == 12
#warning 12
#endif
		CHECK(true);
	}
}
