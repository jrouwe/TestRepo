./cmake_linux_clang.sh ReleaseCoverage
cd Linux_ReleaseCoverage
make
make CTEST_OUTPUT_ON_FAILURE=1 test
