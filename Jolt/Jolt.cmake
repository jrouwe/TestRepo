# Requires C++ 17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Root
set(JOLT_PHYSICS_ROOT ${PHYSICS_REPO_ROOT}/Jolt)

# Source files
set(JOLT_PHYSICS_SRC_FILES
	${JOLT_PHYSICS_ROOT}/Core/ARMNeon.h
	${JOLT_PHYSICS_ROOT}/Core/Array.h
	${JOLT_PHYSICS_ROOT}/Core/Atomics.h
	${JOLT_PHYSICS_ROOT}/Core/ByteBuffer.h
	${JOLT_PHYSICS_ROOT}/Core/Color.cpp
	${JOLT_PHYSICS_ROOT}/Core/Color.h
	${JOLT_PHYSICS_ROOT}/Core/Core.h
	${JOLT_PHYSICS_ROOT}/Core/Factory.cpp
	${JOLT_PHYSICS_ROOT}/Core/Factory.h
	${JOLT_PHYSICS_ROOT}/Core/FixedSizeFreeList.h
	${JOLT_PHYSICS_ROOT}/Core/FixedSizeFreeList.inl
	${JOLT_PHYSICS_ROOT}/Core/FPControlWord.h
	${JOLT_PHYSICS_ROOT}/Core/FPException.h
	${JOLT_PHYSICS_ROOT}/Core/FPFlushDenormals.h
	${JOLT_PHYSICS_ROOT}/Core/HashCombine.h
	${JOLT_PHYSICS_ROOT}/Core/InsertionSort.h
	${JOLT_PHYSICS_ROOT}/Core/IssueReporting.cpp
	${JOLT_PHYSICS_ROOT}/Core/IssueReporting.h
	${JOLT_PHYSICS_ROOT}/Core/JobSystem.h
	${JOLT_PHYSICS_ROOT}/Core/JobSystem.inl
	${JOLT_PHYSICS_ROOT}/Core/JobSystemSingleThreaded.cpp
	${JOLT_PHYSICS_ROOT}/Core/JobSystemSingleThreaded.h
	${JOLT_PHYSICS_ROOT}/Core/JobSystemThreadPool.cpp
	${JOLT_PHYSICS_ROOT}/Core/JobSystemThreadPool.h
	${JOLT_PHYSICS_ROOT}/Core/JobSystemWithBarrier.cpp
	${JOLT_PHYSICS_ROOT}/Core/JobSystemWithBarrier.h
	${JOLT_PHYSICS_ROOT}/Core/LinearCurve.cpp
	${JOLT_PHYSICS_ROOT}/Core/LinearCurve.h
	${JOLT_PHYSICS_ROOT}/Core/LockFreeHashMap.h
	${JOLT_PHYSICS_ROOT}/Core/LockFreeHashMap.inl
	${JOLT_PHYSICS_ROOT}/Core/Memory.cpp
	${JOLT_PHYSICS_ROOT}/Core/Memory.h
	${JOLT_PHYSICS_ROOT}/Core/Mutex.h
	${JOLT_PHYSICS_ROOT}/Core/MutexArray.h
	${JOLT_PHYSICS_ROOT}/Core/NonCopyable.h
	${JOLT_PHYSICS_ROOT}/Core/Profiler.cpp
	${JOLT_PHYSICS_ROOT}/Core/Profiler.h
	${JOLT_PHYSICS_ROOT}/Core/Profiler.inl
	${JOLT_PHYSICS_ROOT}/Core/QuickSort.h
	${JOLT_PHYSICS_ROOT}/Core/Reference.h
	${JOLT_PHYSICS_ROOT}/Core/Result.h
	${JOLT_PHYSICS_ROOT}/Core/RTTI.cpp
	${JOLT_PHYSICS_ROOT}/Core/RTTI.h
	${JOLT_PHYSICS_ROOT}/Core/ScopeExit.h
	${JOLT_PHYSICS_ROOT}/Core/Semaphore.cpp
	${JOLT_PHYSICS_ROOT}/Core/Semaphore.h
	${JOLT_PHYSICS_ROOT}/Core/StaticArray.h
	${JOLT_PHYSICS_ROOT}/Core/StreamIn.h
	${JOLT_PHYSICS_ROOT}/Core/StreamOut.h
	${JOLT_PHYSICS_ROOT}/Core/StreamUtils.h
	${JOLT_PHYSICS_ROOT}/Core/StreamWrapper.h
	${JOLT_PHYSICS_ROOT}/Core/StringTools.cpp
	${JOLT_PHYSICS_ROOT}/Core/StringTools.h
	${JOLT_PHYSICS_ROOT}/Core/STLAlignedAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/STLAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/STLTempAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/TempAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/TickCounter.cpp
	${JOLT_PHYSICS_ROOT}/Core/TickCounter.h
	${JOLT_PHYSICS_ROOT}/Core/UnorderedMap.h
	${JOLT_PHYSICS_ROOT}/Core/UnorderedSet.h
	${JOLT_PHYSICS_ROOT}/Geometry/AABox.h
	${JOLT_PHYSICS_ROOT}/Geometry/AABox4.h
	${JOLT_PHYSICS_ROOT}/Geometry/ClipPoly.h
	${JOLT_PHYSICS_ROOT}/Geometry/ClosestPoint.h
	${JOLT_PHYSICS_ROOT}/Geometry/ConvexHullBuilder.cpp
	${JOLT_PHYSICS_ROOT}/Geometry/ConvexHullBuilder.h
	${JOLT_PHYSICS_ROOT}/Geometry/ConvexHullBuilder2D.cpp
	${JOLT_PHYSICS_ROOT}/Geometry/ConvexHullBuilder2D.h
	${JOLT_PHYSICS_ROOT}/Geometry/ConvexSupport.h
	${JOLT_PHYSICS_ROOT}/Geometry/Ellipse.h
	${JOLT_PHYSICS_ROOT}/Geometry/EPAConvexHullBuilder.h
	${JOLT_PHYSICS_ROOT}/Geometry/EPAPenetrationDepth.h
	${JOLT_PHYSICS_ROOT}/Geometry/GJKClosestPoint.h
	${JOLT_PHYSICS_ROOT}/Geometry/IndexedTriangle.h
	${JOLT_PHYSICS_ROOT}/Geometry/Indexify.cpp
	${JOLT_PHYSICS_ROOT}/Geometry/Indexify.h
	${JOLT_PHYSICS_ROOT}/Geometry/MortonCode.h
	${JOLT_PHYSICS_ROOT}/Geometry/OrientedBox.cpp
	${JOLT_PHYSICS_ROOT}/Geometry/OrientedBox.h
	${JOLT_PHYSICS_ROOT}/Geometry/Plane.h
	${JOLT_PHYSICS_ROOT}/Geometry/RayAABox.h
	${JOLT_PHYSICS_ROOT}/Geometry/RayAABox8.h
	${JOLT_PHYSICS_ROOT}/Geometry/RayCapsule.h
	${JOLT_PHYSICS_ROOT}/Geometry/RayCylinder.h
	${JOLT_PHYSICS_ROOT}/Geometry/RaySphere.h
	${JOLT_PHYSICS_ROOT}/Geometry/RayTriangle.h
	${JOLT_PHYSICS_ROOT}/Geometry/RayTriangle8.h
	${JOLT_PHYSICS_ROOT}/Geometry/Sphere.h
	${JOLT_PHYSICS_ROOT}/Geometry/Triangle.h
	${JOLT_PHYSICS_ROOT}/Jolt.cmake
	${JOLT_PHYSICS_ROOT}/Jolt.h
	${JOLT_PHYSICS_ROOT}/Math/DMat44.h
	${JOLT_PHYSICS_ROOT}/Math/DMat44.inl
	${JOLT_PHYSICS_ROOT}/Math/Double3.h
	${JOLT_PHYSICS_ROOT}/Math/DVec3.h
	${JOLT_PHYSICS_ROOT}/Math/DVec3.inl
	${JOLT_PHYSICS_ROOT}/Math/DynMatrix.h
	${JOLT_PHYSICS_ROOT}/Math/EigenValueSymmetric.h
	${JOLT_PHYSICS_ROOT}/Math/FindRoot.h
	${JOLT_PHYSICS_ROOT}/Math/Float2.h
	${JOLT_PHYSICS_ROOT}/Math/Float3.h
	${JOLT_PHYSICS_ROOT}/Math/Float4.h
	${JOLT_PHYSICS_ROOT}/Math/GaussianElimination.h
	${JOLT_PHYSICS_ROOT}/Math/HalfFloat.h
	${JOLT_PHYSICS_ROOT}/Math/Mat44.h
	${JOLT_PHYSICS_ROOT}/Math/Mat44.inl
	${JOLT_PHYSICS_ROOT}/Math/Math.h
	${JOLT_PHYSICS_ROOT}/Math/MathTypes.h
	${JOLT_PHYSICS_ROOT}/Math/Matrix.h
	${JOLT_PHYSICS_ROOT}/Math/Quat.h
	${JOLT_PHYSICS_ROOT}/Math/Quat.inl
	${JOLT_PHYSICS_ROOT}/Math/Real.h
	${JOLT_PHYSICS_ROOT}/Math/Swizzle.h
	${JOLT_PHYSICS_ROOT}/Math/Trigonometry.h
	${JOLT_PHYSICS_ROOT}/Math/UVec4.h
	${JOLT_PHYSICS_ROOT}/Math/UVec4.inl
	${JOLT_PHYSICS_ROOT}/Math/UVec8.h
	${JOLT_PHYSICS_ROOT}/Math/UVec8.inl
	${JOLT_PHYSICS_ROOT}/Math/Vec3.cpp
	${JOLT_PHYSICS_ROOT}/Math/Vec3.h
	${JOLT_PHYSICS_ROOT}/Math/Vec3.inl
	${JOLT_PHYSICS_ROOT}/Math/Vec4.h
	${JOLT_PHYSICS_ROOT}/Math/Vec4.inl
	${JOLT_PHYSICS_ROOT}/Math/Vec8.h
	${JOLT_PHYSICS_ROOT}/Math/Vec8.inl
	${JOLT_PHYSICS_ROOT}/Math/Vector.h
	${JOLT_PHYSICS_ROOT}/RegisterTypes.cpp
	${JOLT_PHYSICS_ROOT}/RegisterTypes.h
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRenderer.cpp
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRenderer.h
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRendererPlayback.cpp
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRendererPlayback.h
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRendererRecorder.cpp
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRendererRecorder.h
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRendererSimple.cpp
	${JOLT_PHYSICS_ROOT}/Renderer/DebugRendererSimple.h
)

if (ENABLE_OBJECT_STREAM)
	set(JOLT_PHYSICS_SRC_FILES
		${JOLT_PHYSICS_SRC_FILES}
		${JOLT_PHYSICS_ROOT}/ObjectStream/GetPrimitiveTypeOfType.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStream.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStream.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamBinaryIn.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamBinaryIn.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamBinaryOut.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamBinaryOut.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamIn.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamIn.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamOut.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamOut.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamTextIn.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamTextIn.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamTextOut.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamTextOut.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/ObjectStreamTypes.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/SerializableAttribute.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/SerializableAttributeEnum.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/SerializableAttributeTyped.h
		${JOLT_PHYSICS_ROOT}/ObjectStream/TypeDeclarations.cpp
		${JOLT_PHYSICS_ROOT}/ObjectStream/TypeDeclarations.h
	)
endif()

if ("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows")
	# Add natvis file
	set(JOLT_PHYSICS_SRC_FILES ${JOLT_PHYSICS_SRC_FILES} ${JOLT_PHYSICS_ROOT}/Jolt.natvis)
endif()

# Group source files
source_group(TREE ${JOLT_PHYSICS_ROOT} FILES ${JOLT_PHYSICS_SRC_FILES})

# Create Jolt lib
add_library(Jolt ${JOLT_PHYSICS_SRC_FILES})

if (BUILD_SHARED_LIBS)
	# Set default visibility to hidden
	set(CMAKE_CXX_VISIBILITY_PRESET hidden)

	if (GENERATE_DEBUG_SYMBOLS)
		if (MSVC)
			# MSVC specific option to enable PDB generation
			set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} /DEBUG:FASTLINK")
		else()
			# Clang/GCC option to enable debug symbol generation
			set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} -g")
		endif()
	endif()

	# Set linker flags for other build types to be the same as release
	set(CMAKE_SHARED_LINKER_FLAGS_RELEASEASAN "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")
	set(CMAKE_SHARED_LINKER_FLAGS_RELEASEUBSAN "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")
	set(CMAKE_SHARED_LINKER_FLAGS_RELEASECOVERAGE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")
	set(CMAKE_SHARED_LINKER_FLAGS_DISTRIBUTION "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")

	# Public define to instruct user code to import Jolt symbols (rather than use static linking)
	target_compile_definitions(Jolt PUBLIC JPH_SHARED_LIBRARY)

	# Private define to instruct the library to export symbols for shared linking
	target_compile_definitions(Jolt PRIVATE JPH_BUILD_SHARED_LIBRARY)
endif()

# Use repository as include directory when building, install directory when installing
target_include_directories(Jolt PUBLIC
	$<BUILD_INTERFACE:${PHYSICS_REPO_ROOT}>
	$<INSTALL_INTERFACE:include/>)
target_precompile_headers(Jolt PRIVATE ${JOLT_PHYSICS_ROOT}/Jolt.h)

# Set the debug/non-debug build flags
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug>:_DEBUG>")
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Release,Distribution,ReleaseASAN,ReleaseUBSAN,ReleaseCoverage>:NDEBUG>")

# ASAN should use the default allocators
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:ReleaseASAN>:JPH_DISABLE_TEMP_ALLOCATOR;JPH_DISABLE_CUSTOM_ALLOCATOR>")

# Setting floating point exceptions
if (FLOATING_POINT_EXCEPTIONS_ENABLED AND "${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
	target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug,Release>:JPH_FLOATING_POINT_EXCEPTIONS_ENABLED>")
endif()

# Setting the disable custom allocator flag
if (DISABLE_CUSTOM_ALLOCATOR)
	target_compile_definitions(Jolt PUBLIC JPH_DISABLE_CUSTOM_ALLOCATOR)
endif()

# Setting enable asserts flag
if (USE_ASSERTS)
	target_compile_definitions(Jolt PUBLIC JPH_ENABLE_ASSERTS)
endif()

# Setting double precision flag
if (DOUBLE_PRECISION)
	target_compile_definitions(Jolt PUBLIC JPH_DOUBLE_PRECISION)
endif()

# Setting to attempt cross platform determinism
if (CROSS_PLATFORM_DETERMINISTIC)
	target_compile_definitions(Jolt PUBLIC JPH_CROSS_PLATFORM_DETERMINISTIC)
endif()

# Setting to determine number of bits in ObjectLayer
if (OBJECT_LAYER_BITS)
	target_compile_definitions(Jolt PUBLIC JPH_OBJECT_LAYER_BITS=${OBJECT_LAYER_BITS})
endif()

if (USE_STD_VECTOR)
	target_compile_definitions(Jolt PUBLIC JPH_USE_STD_VECTOR)
endif()

# Setting to periodically trace broadphase stats to help determine if the broadphase layer configuration is optimal
if (TRACK_BROADPHASE_STATS)
	target_compile_definitions(Jolt PUBLIC JPH_TRACK_BROADPHASE_STATS)
endif()

# Setting to periodically trace narrowphase stats to help determine which collision queries could be optimized
if (TRACK_NARROWPHASE_STATS)
	target_compile_definitions(Jolt PUBLIC JPH_TRACK_NARROWPHASE_STATS)
endif()

# Enable the debug renderer
if (DEBUG_RENDERER_IN_DISTRIBUTION)
	target_compile_definitions(Jolt PUBLIC "JPH_DEBUG_RENDERER")
elseif (DEBUG_RENDERER_IN_DEBUG_AND_RELEASE)
	target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug,Release,ReleaseASAN,ReleaseUBSAN>:JPH_DEBUG_RENDERER>")
endif()

# Enable the profiler
if (PROFILER_IN_DISTRIBUTION)
	target_compile_definitions(Jolt PUBLIC "JPH_PROFILE_ENABLED")
elseif (PROFILER_IN_DEBUG_AND_RELEASE)
	target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug,Release,ReleaseASAN,ReleaseUBSAN>:JPH_PROFILE_ENABLED>")
endif()

# Compile the ObjectStream class and RTTI attribute information
if (ENABLE_OBJECT_STREAM)
	target_compile_definitions(Jolt PUBLIC JPH_OBJECT_STREAM)
endif()

# Emit the instruction set definitions to ensure that child projects use the same settings even if they override the used instruction sets (a mismatch causes link errors)
function(EMIT_X86_INSTRUCTION_SET_DEFINITIONS)
	if (USE_AVX512)
		target_compile_definitions(Jolt PUBLIC JPH_USE_AVX512)
	endif()
	if (USE_AVX2)
		target_compile_definitions(Jolt PUBLIC JPH_USE_AVX2)
	endif()
	if (USE_AVX)
		target_compile_definitions(Jolt PUBLIC JPH_USE_AVX)
	endif()
	if (USE_SSE4_1)
		target_compile_definitions(Jolt PUBLIC JPH_USE_SSE4_1)
	endif()
	if (USE_SSE4_2)
		target_compile_definitions(Jolt PUBLIC JPH_USE_SSE4_2)
	endif()
	if (USE_LZCNT)
		target_compile_definitions(Jolt PUBLIC JPH_USE_LZCNT)
	endif()
	if (USE_TZCNT)
		target_compile_definitions(Jolt PUBLIC JPH_USE_TZCNT)
	endif()
	if (USE_F16C)
		target_compile_definitions(Jolt PUBLIC JPH_USE_F16C)
	endif()
	if (USE_FMADD AND NOT CROSS_PLATFORM_DETERMINISTIC)
		target_compile_definitions(Jolt PUBLIC JPH_USE_FMADD)
	endif()
endfunction()

# Add the compiler commandline flags to select the right instruction sets
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
	if ("${CMAKE_VS_PLATFORM_NAME}" STREQUAL "x86" OR "${CMAKE_VS_PLATFORM_NAME}" STREQUAL "x64")
		if (USE_AVX512)
			target_compile_options(Jolt PUBLIC /arch:AVX512)
		elseif (USE_AVX2)
			target_compile_options(Jolt PUBLIC /arch:AVX2)
		elseif (USE_AVX)
			target_compile_options(Jolt PUBLIC /arch:AVX)
		endif()
		EMIT_X86_INSTRUCTION_SET_DEFINITIONS()
	endif()
else()
	if (XCODE)
		# XCode builds for multiple architectures, we can't set global flags
	elseif (CROSS_COMPILE_ARM OR CMAKE_OSX_ARCHITECTURES MATCHES "arm64" OR "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "aarch64")
		# ARM64 uses no special commandline flags
	elseif (EMSCRIPTEN)
		if (USE_WASM_SIMD)
			# Jolt currently doesn't implement the WASM specific SIMD intrinsics so uses the SSE 4.2 intrinsics
			# See: https://emscripten.org/docs/porting/simd.html#webassembly-simd-intrinsics
			# Note that this does not require the browser to actually support SSE 4.2 it merely means that it can translate those instructions to WASM SIMD instructions
			target_compile_options(Jolt PUBLIC -msimd128 -msse4.2)
		endif()
		target_compile_options(Jolt PUBLIC -pthread)
		target_link_options(Jolt PUBLIC -sSTACK_SIZE=1048576 -sINITIAL_MEMORY=67108864)
	elseif ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "x86_64" OR "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "AMD64" OR "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "x86" OR "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "i386")
		# x86 and x86_64
		# On 32-bit builds we need to default to using SSE instructions, the x87 FPU instructions have higher intermediate precision
		# which will cause problems in the collision detection code (the effect is similar to leaving FMA on, search for
		# JPH_PRECISE_MATH_ON for the locations where this is a problem).

		if (USE_AVX512)
			target_compile_options(Jolt PUBLIC -mavx512f -mavx512vl -mavx512dq -mavx2 -mbmi -mpopcnt -mlzcnt -mf16c)
		elseif (USE_AVX2)
			target_compile_options(Jolt PUBLIC -mavx2 -mbmi -mpopcnt -mlzcnt -mf16c)
		elseif (USE_AVX)
			target_compile_options(Jolt PUBLIC -mavx -mpopcnt)
		elseif (USE_SSE4_2)
			target_compile_options(Jolt PUBLIC -msse4.2 -mpopcnt)
		elseif (USE_SSE4_1)
			target_compile_options(Jolt PUBLIC -msse4.1)
		else()
			target_compile_options(Jolt PUBLIC -msse2)
		endif()
		if (USE_LZCNT)
			target_compile_options(Jolt PUBLIC -mlzcnt)
		endif()
		if (USE_TZCNT)
			target_compile_options(Jolt PUBLIC -mbmi)
		endif()
		if (USE_F16C)
			target_compile_options(Jolt PUBLIC -mf16c)
		endif()
		if (USE_FMADD AND NOT CROSS_PLATFORM_DETERMINISTIC)
			target_compile_options(Jolt PUBLIC -mfma)
		endif()

		if (NOT MSVC)
			target_compile_options(Jolt PUBLIC -mfpmath=sse)
		endif()

		EMIT_X86_INSTRUCTION_SET_DEFINITIONS()
	endif()
endif()
