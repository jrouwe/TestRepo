// SPDX-FileCopyrightText: 2021 Jorrit Rouwe
// SPDX-License-Identifier: MIT

// STL includes
#include <cstring>

using namespace std;

// Program entry point
int main(int argc, char** argv)
{
	const char *hash = nullptr;
	for (int argidx = 1; argidx < argc; ++argidx)
	{
		const char *arg = argv[argidx];

		if (strncmp(arg, "-hash=", 6) == 0)
		{
			hash = arg + 6;
		}
	}

	return hash != nullptr && strcmp(hash, "1234") == 0? 0 : 1;
}
