cmake_minimum_required(VERSION 3.15 FATAL_ERROR)

project(JoltPhysics CXX)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
	set(CMAKE_CONFIGURATION_TYPES "Debug;Release;Distribution")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
	set(CMAKE_CONFIGURATION_TYPES "Debug;Release;ReleaseASAN;ReleaseUBSAN;ReleaseCoverage;Distribution")
endif()

if ("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows")
	# Fill in the path to the asan libraries
	set(CLANG_LIB_PATH "\"$(VSInstallDir)\\VC\\Tools\\Llvm\\x64\\lib\\clang\\${CMAKE_CXX_COMPILER_VERSION}\\lib\\windows\"")
	
	# 64 bit architecture
	set(CMAKE_VS_PLATFORM_TOOLSET_HOST_ARCHITECTURE "x64")

	# Set runtime library
	set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

	# Set general compiler flags
	set(CMAKE_CXX_FLAGS "/std:c++17 /Zc:__cplusplus /GR- /Gm- /Wall /WX /EHsc /nologo /diagnostics:classic /FC /arch:AVX2 /fp:except- /Zc:inline /Zi /DWIN32 /D_WINDOWS /DUNICODE /D_UNICODE")
	
	# Set compiler flags for various configurations
	set(CMAKE_CXX_FLAGS_DEBUG "/D_DEBUG /GS /Od /Ob0 /RTC1 /DJPH_STAT_COLLECTOR /DJPH_PROFILE_ENABLED /DJPH_DEBUG_RENDERER")
	set(CMAKE_CXX_FLAGS_RELEASE "/DNDEBUG /GS- /GL /Gy /O2 /Oi /Ot /DJPH_PROFILE_ENABLED /DJPH_DEBUG_RENDERER")
	set(CMAKE_CXX_FLAGS_DISTRIBUTION "/DNDEBUG /GS- /GL /Gy /O2 /Oi /Ot")
	set(CMAKE_CXX_FLAGS_RELEASEASAN "/DNDEBUG /DJPH_PROFILE_ENABLED /DJPH_DISABLE_TEMP_ALLOCATOR /DJPH_DEBUG_RENDERER -fsanitize=address /Od")
	set(CMAKE_CXX_FLAGS_RELEASEUBSAN "/DNDEBUG /DJPH_PROFILE_ENABLED /DJPH_DEBUG_RENDERER -fsanitize=undefined,implicit-conversion")
	set(CMAKE_CXX_FLAGS_RELEASECOVERAGE "/DNDEBUG -fprofile-instr-generate -fcoverage-mapping")

	# Set linker flags
	set(CMAKE_EXE_LINKER_FLAGS "/machine:x64 /SUBSYSTEM:WINDOWS /ignore:4221 /DEBUG:FASTLINK")
	if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP /fp:fast") # Clang doesn't use fast math because it cannot be turned off inside a single compilation unit
		set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /DJPH_FLOATING_POINT_EXCEPTIONS_ENABLED") # Clang turns Float2 into a vector sometimes causing floating point exceptions
		set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /DJPH_FLOATING_POINT_EXCEPTIONS_ENABLED")
		set(CMAKE_EXE_LINKER_FLAGS_RELEASE "/INCREMENTAL:NO /LTCG:incremental /OPT:ICF /OPT:REF")
		set(CMAKE_STATIC_LINKER_FLAGS_RELEASE "/LTCG")
	elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /showFilenames -mavx2 -mfma -mf16c -mlzcnt -mpopcnt")
		set(CMAKE_EXE_LINKER_FLAGS_RELEASEASAN "/SUBSYSTEM:CONSOLE /LIBPATH:${CLANG_LIB_PATH} clang_rt.asan-x86_64.lib -wholearchive:clang_rt.asan-x86_64.lib clang_rt.asan_cxx-x86_64.lib -wholearchive:clang_rt.asan_cxx-x86_64.lib")
		set(CMAKE_EXE_LINKER_FLAGS_RELEASEUBSAN "${CMAKE_EXE_LINKER_FLAGS_RELEASE} /LIBPATH:${CLANG_LIB_PATH}")
		set(CMAKE_EXE_LINKER_FLAGS_RELEASECOVERAGE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} /LIBPATH:${CLANG_LIB_PATH}")
	endif()
elseif ("${CMAKE_SYSTEM_NAME}" STREQUAL "Linux")
	# Switch to clang compiler
	set(CMAKE_CXX_COMPILER "clang++")

	# Set general compiler flags (do not use -ffast-math since it cannot be turned off in a single compilation unit)
	set(CMAKE_CXX_FLAGS "-std=c++17 -I. -Wall -Werror")

	# Platform specific compiler flags
	if ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "x86_64" OR "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "AMD64")
		# X64
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mavx2 -mfma -mf16c -mlzcnt -mpopcnt")
	elseif ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "aarch64")
		# ARM64
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
	endif()

	# Set compiler flags for various configurations
	set(CMAKE_CXX_FLAGS_DEBUG "-g -D_DEBUG -DJPH_STAT_COLLECTOR -DJPH_PROFILE_ENABLED -DJPH_DEBUG_RENDERER") # Clang reorders variables so that div by zero occurs if we enable exception checking
	set(CMAKE_CXX_FLAGS_RELEASE "-DNDEBUG -DJPH_PROFILE_ENABLED -DJPH_DEBUG_RENDERER")
	set(CMAKE_CXX_FLAGS_DISTRIBUTION "-DNDEBUG")
	set(CMAKE_CXX_FLAGS_RELEASEASAN "-DNDEBUG -DJPH_PROFILE_ENABLED -DJPH_DISABLE_TEMP_ALLOCATOR -DJPH_DEBUG_RENDERER -fsanitize=address")
	set(CMAKE_CXX_FLAGS_RELEASEUBSAN "-DNDEBUG -DJPH_PROFILE_ENABLED -DJPH_DEBUG_RENDERER -fsanitize=undefined,implicit-conversion")
	set(CMAKE_CXX_FLAGS_RELEASECOVERAGE "-DNDEBUG -fprofile-instr-generate -fcoverage-mapping")

	# Set linker flags
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lpthread")
endif()

# Set linker flags
set(CMAKE_EXE_LINKER_FLAGS_DISTRIBUTION "${CMAKE_EXE_LINKER_FLAGS_RELEASE}")

# Set repository root
set(PHYSICS_REPO_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../)

# Create UnitTests executable
include(${PHYSICS_REPO_ROOT}/UnitTests/UnitTests.cmake)
add_executable(UnitTests ${UNIT_TESTS_SRC_FILES})
target_include_directories(UnitTests PUBLIC ${UNIT_TESTS_ROOT})
if ("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows")
	target_link_options(UnitTests PUBLIC "/SUBSYSTEM:CONSOLE")
endif()

# Register unit tests as a test so that it can be run with: 
# make CTEST_OUTPUT_ON_FAILURE=1 test
enable_testing()
add_test(UnitTests UnitTests)