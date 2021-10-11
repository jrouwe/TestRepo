./cmake_linux_clang.sh ReleaseCoverage
cmake --build Linux_ReleaseCoverage
cmake --build Linux_ReleaseCoverage --target test
ls -al Linux_ReleaseCoverage/
llvm-profdata merge -sparse Linux_ReleaseCoverage/default.profraw -o Linux_ReleaseCoverage/default.profdata
llvm-cov show -format=text Linux_ReleaseCoverage/UnitTests -instr-profile=Linux_ReleaseCoverage/default.profdata > coverage.txt