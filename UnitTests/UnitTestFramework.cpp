// Emit everything needed for the main function
#define DOCTEST_CONFIG_IMPLEMENT
#define DOCTEST_CONFIG_NO_WINDOWS_SEH

#include "UnitTestFramework.h"

using namespace doctest;

// Generic entry point
int main(int argc, char** argv)
{
	return Context(argc, argv).run(); 
}
