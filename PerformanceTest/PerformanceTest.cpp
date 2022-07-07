// SPDX-FileCopyrightText: 2021 Jorrit Rouwe
// SPDX-License-Identifier: MIT

// STL includes
#include <cstring>
#include <iostream>

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
			cout << "Hash: " << hash << endl;
		}
	}

	return hash != nullptr && (strcmp(hash, "0x485e1d8e739a3c9d") == 0 || strcmp(hash, "0xc29b4c0ea4cf1876") == 0)? 0 : 1;
}
