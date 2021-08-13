#include "UnitTestFramework.h"

#include <stdlib.h>

TEST_SUITE("Suite")
{
	TEST_CASE("Test")
	{
		CHECK(true);
		void *mem = malloc(1000);
		free(mem);
		*(int *)mem = 10;
	}
}
