# Requires C++ 17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Root
set(JOLT_PHYSICS_ROOT ${PHYSICS_REPO_ROOT}/Jolt)

# Source files
set(JOLT_PHYSICS_SRC_FILES
	${JOLT_PHYSICS_ROOT}/ConfigurationString.h
	${JOLT_PHYSICS_ROOT}/Compute/ComputeBuffer.h
	${JOLT_PHYSICS_ROOT}/Compute/ComputeQueue.h
	${JOLT_PHYSICS_ROOT}/Compute/ComputeSystem.h
	${JOLT_PHYSICS_ROOT}/Compute/ComputeShader.h
	${JOLT_PHYSICS_ROOT}/Core/ARMNeon.h
	${JOLT_PHYSICS_ROOT}/Core/Array.h
	${JOLT_PHYSICS_ROOT}/Core/Atomics.h
	${JOLT_PHYSICS_ROOT}/Core/BinaryHeap.h
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
	${JOLT_PHYSICS_ROOT}/Core/HashTable.h
	${JOLT_PHYSICS_ROOT}/Core/IncludeWindows.h
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
	${JOLT_PHYSICS_ROOT}/Core/STLAlignedAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/STLAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/STLLocalAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/STLTempAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/StreamIn.h
	${JOLT_PHYSICS_ROOT}/Core/StreamOut.h
	${JOLT_PHYSICS_ROOT}/Core/StreamUtils.h
	${JOLT_PHYSICS_ROOT}/Core/StreamWrapper.h
	${JOLT_PHYSICS_ROOT}/Core/StridedPtr.h
	${JOLT_PHYSICS_ROOT}/Core/StringTools.cpp
	${JOLT_PHYSICS_ROOT}/Core/StringTools.h
	${JOLT_PHYSICS_ROOT}/Core/TempAllocator.h
	${JOLT_PHYSICS_ROOT}/Core/TickCounter.cpp
	${JOLT_PHYSICS_ROOT}/Core/TickCounter.h
	${JOLT_PHYSICS_ROOT}/Core/UnorderedMap.h
	${JOLT_PHYSICS_ROOT}/Core/UnorderedSet.h
	${JOLT_PHYSICS_ROOT}/Jolt.cmake
	${JOLT_PHYSICS_ROOT}/Jolt.h
	${JOLT_PHYSICS_ROOT}/Math/BVec16.h
	${JOLT_PHYSICS_ROOT}/Math/BVec16.inl
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
	${JOLT_PHYSICS_ROOT}/Math/Vec3.cpp
	${JOLT_PHYSICS_ROOT}/Math/Vec3.h
	${JOLT_PHYSICS_ROOT}/Math/Vec3.inl
	${JOLT_PHYSICS_ROOT}/Math/Vec4.h
	${JOLT_PHYSICS_ROOT}/Math/Vec4.inl
	${JOLT_PHYSICS_ROOT}/Math/Vector.h
	${JOLT_PHYSICS_ROOT}/RegisterTypes.cpp
	${JOLT_PHYSICS_ROOT}/RegisterTypes.h
)

if (JPH_USE_DX12 OR JPH_USE_VK OR JPH_USE_MTL)
	# Compute shaders
	set(JOLT_PHYSICS_SHADERS
		${JOLT_PHYSICS_ROOT}/Shaders/TestCompute.hlsl
	)

	set(JOLT_PHYSICS_SHADER_HEADERS
		${JOLT_PHYSICS_ROOT}/Shaders/ShaderCore.h
		${JOLT_PHYSICS_ROOT}/Shaders/ShaderMat44.h
		${JOLT_PHYSICS_ROOT}/Shaders/ShaderMath.h
		${JOLT_PHYSICS_ROOT}/Shaders/ShaderPlane.h
		${JOLT_PHYSICS_ROOT}/Shaders/ShaderQuat.h
		${JOLT_PHYSICS_ROOT}/Shaders/ShaderVec3.h
		${JOLT_PHYSICS_ROOT}/Shaders/TestCompute.h
		${JOLT_PHYSICS_ROOT}/Shaders/TestComputeBindings.h
	)
endif()

if (WIN32)
	# Add natvis file
	set(JOLT_PHYSICS_SRC_FILES ${JOLT_PHYSICS_SRC_FILES} ${JOLT_PHYSICS_ROOT}/Jolt.natvis)

	# Set properties to compile shaders as compute shaders
	set_source_files_properties(${JOLT_PHYSICS_SHADERS} PROPERTIES VS_SHADER_FLAGS "/WX /T cs_5_0")

	# DirectX support
	if (JPH_USE_DX12)
		# DirectX source files
		set(JOLT_PHYSICS_SRC_FILES
			${JOLT_PHYSICS_SRC_FILES}
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeQueueDX12.cpp
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeQueueDX12.h
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeBufferDX12.cpp
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeBufferDX12.h
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeSystemDX12.cpp
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeSystemDX12.h
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeSystemDX12Impl.cpp
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeSystemDX12Impl.h
			${JOLT_PHYSICS_ROOT}/Compute/DX12/ComputeShaderDX12.h
			${JOLT_PHYSICS_ROOT}/Compute/DX12/IncludeDX12.h
		)
	endif()
else()
	set(JPH_USE_DX12 OFF)
endif()

if (APPLE)
	# Metal support
	if (JPH_USE_MTL)
		# Metal source files
		set(JOLT_PHYSICS_SRC_FILES
			${JOLT_PHYSICS_SRC_FILES}
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeBufferMTL.mm
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeBufferMTL.h
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeQueueMTL.mm
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeQueueMTL.h
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeShaderMTL.mm
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeShaderMTL.h
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeSystemMTL.mm
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeSystemMTL.h
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeSystemMTLImpl.mm
			${JOLT_PHYSICS_ROOT}/Compute/MTL/ComputeSystemMTLImpl.h
		)

		find_program(DXC_COMPILER NAMES dxc)
		find_program(SPIRV_CROSS_COMPILER NAMES spirv-cross)
		if (NOT DXC_COMPILER)
			MESSAGE("Application 'dxc' not found. Can't compile compute shaders. Some functionality will be unavailable. You can install it by e.g. installing the Vulkan SDK.")
		elseif (NOT SPIRV_CROSS_COMPILER)
			MESSAGE("Application 'spirv-cross' not found. Can't compile compute shaders. Some functionality will be unavailable. You can install it by e.g. installing the Vulkan SDK.")
		else()
			# Determine target for shader compiler
			if (IOS)
				set(METAL_SDK_TARGET "iphonesimulator")
			else()
				set(METAL_SDK_TARGET "macosx")
			endif()

			# Compile Metal shaders
			foreach(SHADER ${JOLT_PHYSICS_SHADERS})
				cmake_path(GET SHADER STEM SHADER_STEM) # Filename without extension
				set(SPV_SHADER "${CMAKE_CURRENT_BINARY_DIR}/${SHADER_STEM}.spv")
				set(MTL_SHADER "${CMAKE_CURRENT_BINARY_DIR}/${SHADER_STEM}.metal")
				set(AIR_SHADER "${CMAKE_CURRENT_BINARY_DIR}/${SHADER_STEM}.air")
				add_custom_command(OUTPUT ${AIR_SHADER}
					COMMAND ${DXC_COMPILER} -E main -T cs_6_0 -I Jolt/Shaders -WX -O3 -all_resources_bound ${SHADER} -spirv -fvk-use-dx-layout -fspv-entrypoint-name=${SHADER_STEM} -Fo ${SPV_SHADER}
					COMMAND ${SPIRV_CROSS_COMPILER} ${SPV_SHADER} --msl --output ${MTL_SHADER}
					COMMAND xcrun -sdk ${METAL_SDK_TARGET} metal -c ${MTL_SHADER} -o ${AIR_SHADER}
					DEPENDS ${SHADER} ${JOLT_PHYSICS_SHADER_HEADERS} # Currently don't have a way to detect header dependencies, so making dependent on all
					COMMENT "Compiling Metal ${SHADER}")
				list(APPEND JOLT_PHYSICS_MTL_SHADERS ${AIR_SHADER})
			endforeach()

			# Link Metal shaders
			set(JOLT_PHYSICS_METAL_LIB ${JOLT_PHYSICS_ROOT}/Shaders/Jolt.metallib)
			add_custom_command(OUTPUT ${JOLT_PHYSICS_METAL_LIB}
				COMMAND xcrun -sdk ${METAL_SDK_TARGET} metallib -o ${JOLT_PHYSICS_METAL_LIB} ${JOLT_PHYSICS_MTL_SHADERS}
				DEPENDS ${JOLT_PHYSICS_MTL_SHADERS}
				COMMENT "Linking shaders")

			# Group intermediate files
			source_group(Intermediate FILES ${JOLT_PHYSICS_MTL_SHADERS} ${JOLT_PHYSICS_METAL_LIB})
		endif()
	endif()

	# Ignore PCH files for .mm files
	foreach(SRC_FILE ${JOLT_PHYSICS_SRC_FILES})
		if (SRC_FILE MATCHES "\.mm")
			set_source_files_properties(${SRC_FILE} PROPERTIES SKIP_PRECOMPILE_HEADERS ON)
		endif()
	endforeach()
else()
	set(JPH_USE_MTL OFF)
endif()

# Vulkan support
if (JPH_USE_VK)
	find_package(Vulkan)
	if (Vulkan_FOUND)
		# Vulkan source files
		set(JOLT_PHYSICS_SRC_FILES
			${JOLT_PHYSICS_SRC_FILES}
			${JOLT_PHYSICS_ROOT}/Compute/VK/BufferVK.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeBufferVK.cpp
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeBufferVK.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeQueueVK.cpp
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeQueueVK.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeShaderVK.cpp
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeShaderVK.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeSystemVK.cpp
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeSystemVK.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeSystemVKImpl.cpp
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeSystemVKImpl.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeSystemVKWithAllocator.cpp
			${JOLT_PHYSICS_ROOT}/Compute/VK/ComputeSystemVKWithAllocator.h
			${JOLT_PHYSICS_ROOT}/Compute/VK/IncludeVK.h
		)

		# TODO: For some reason it errors on finding dxc when we specify the dxc component to find_vulkan (and update cmake version)
		# For now, just set it manually
		string(REPLACE "glslc" "dxc" Vulkan_dxc_EXECUTABLE ${Vulkan_GLSLC_EXECUTABLE})

		# Compile Vulkan shaders
		foreach(SHADER ${JOLT_PHYSICS_SHADERS})
			string(REPLACE ".hlsl" ".spv" SPV_SHADER ${SHADER})
			add_custom_command(OUTPUT ${SPV_SHADER}
				# We use dxc instead of: ${Vulkan_GLSLC_EXECUTABLE} -fshader-stage=compute ${SHADER} -o ${SPV_SHADER}
				# The glslc compiler has the following issues:
				# - All buffers bind to slot 0. We don't want to manually specify registers so this requires going into the SPIRV code and patching it.
				# - It automatically aligns float3 to 16 byte boundaries which wastes a lot of memory in structs. We only seem to be able to override this alignment when compiling a GLSL shader and not with HLSL.
				COMMAND ${Vulkan_dxc_EXECUTABLE} -E main -T cs_6_0 -I Jolt/Shaders -WX -O3 -all_resources_bound ${SHADER} -spirv -fvk-use-dx-layout -Fo ${SPV_SHADER}
				DEPENDS ${SHADER} ${JOLT_PHYSICS_SHADER_HEADERS} # Currently don't have a way to detect header dependencies, so making dependent on all
				COMMENT "Compiling Vulkan ${SHADER}")
			list(APPEND JOLT_PHYSICS_SPV_SHADERS ${SPV_SHADER})
		endforeach()

		# Group intermediate files
		source_group(Intermediate FILES ${JOLT_PHYSICS_SPV_SHADERS})
	else()
		set(JPH_USE_VK OFF)
	endif()
endif()

# Group source files
source_group(TREE ${JOLT_PHYSICS_ROOT} FILES ${JOLT_PHYSICS_SRC_FILES} ${JOLT_PHYSICS_SHADERS} ${JOLT_PHYSICS_SHADER_HEADERS})

# Create Jolt lib
add_library(Jolt ${JOLT_PHYSICS_SRC_FILES} ${JOLT_PHYSICS_SHADERS} ${JOLT_PHYSICS_SHADER_HEADERS} ${JOLT_PHYSICS_SPV_SHADERS} ${JOLT_PHYSICS_METAL_LIB})
add_library(Jolt::Jolt ALIAS Jolt)

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
	set(CMAKE_SHARED_LINKER_FLAGS_RELEASETSAN "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")
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

# Code coverage doesn't work when using precompiled headers
if (CMAKE_GENERATOR STREQUAL "Ninja Multi-Config" AND MSVC)
	# The Ninja Multi-Config generator errors out when selectively disabling precompiled headers for certain configurations.
	# See: https://github.com/jrouwe/JoltPhysics/issues/1211
	target_precompile_headers(Jolt PRIVATE "${JOLT_PHYSICS_ROOT}/Jolt.h")
else()
	target_precompile_headers(Jolt PRIVATE "$<$<NOT:$<CONFIG:ReleaseCoverage>>:${JOLT_PHYSICS_ROOT}/Jolt.h>")
endif()

# Set the NDEBUG define for release builds
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Release,Distribution,ReleaseASAN,ReleaseUBSAN,ReleaseTSAN,ReleaseCoverage>:NDEBUG>")

# ASAN and TSAN should use the default allocators
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:ReleaseASAN,ReleaseTSAN>:JPH_DISABLE_TEMP_ALLOCATOR;JPH_DISABLE_CUSTOM_ALLOCATOR>")

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

# Setting to track simulation timings per body
if (JPH_TRACK_SIMULATION_STATS)
	target_compile_definitions(Jolt PUBLIC JPH_TRACK_SIMULATION_STATS)
endif()

# Compile against DirectX 12
if (JPH_USE_DX12)
	target_compile_definitions(Jolt PUBLIC JPH_USE_DX12)
	target_link_libraries(Jolt LINK_PUBLIC dxgi.lib d3d12.lib d3dcompiler.lib dxguid.lib)

	# Use DXC compiler to compile shaders, when off falls back to FXC
	if (JPH_USE_DXC)
		target_compile_definitions(Jolt PUBLIC JPH_USE_DXC)
		
		# Find the DXC compiler library
		find_library(DXCOMPILER_LIB dxcompiler)
		if (DXCOMPILER_LIB)
			message(STATUS "Found dxcompiler at: ${DXCOMPILER_LIB}")
			target_link_libraries(Jolt LINK_PUBLIC ${DXCOMPILER_LIB})
		else()
			message(WARNING "dxcompiler.lib not found, falling back to system library")
			target_link_libraries(Jolt LINK_PUBLIC dxcompiler.lib)
		endif()	
	endif()
endif()

# Compile against Vulkan
if (JPH_USE_VK)
	target_compile_definitions(Jolt PUBLIC JPH_USE_VK)

	target_include_directories(Jolt PUBLIC ${Vulkan_INCLUDE_DIRS})
	target_link_libraries(Jolt LINK_PUBLIC ${Vulkan_LIBRARIES})
endif()

# Compile against Metal
if (JPH_USE_MTL)
	target_compile_definitions(Jolt PUBLIC JPH_USE_MTL)

	target_link_libraries(Jolt LINK_PUBLIC "-framework Foundation -framework Metal -framework MetalKit")
endif()

# Enable the debug renderer
if (DEBUG_RENDERER_IN_DISTRIBUTION)
	target_compile_definitions(Jolt PUBLIC "JPH_DEBUG_RENDERER")
elseif (DEBUG_RENDERER_IN_DEBUG_AND_RELEASE)
	target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug,Release,ReleaseASAN,ReleaseUBSAN,ReleaseTSAN>:JPH_DEBUG_RENDERER>")
endif()

# Enable the profiler
if (JPH_USE_EXTERNAL_PROFILE)
	set(JOLT_PROFILE_DEFINE JPH_EXTERNAL_PROFILE)
else()
	set(JOLT_PROFILE_DEFINE JPH_PROFILE_ENABLED)
endif()
if (PROFILER_IN_DISTRIBUTION)
	target_compile_definitions(Jolt PUBLIC "${JOLT_PROFILE_DEFINE}")
elseif (PROFILER_IN_DEBUG_AND_RELEASE)
	target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug,Release,ReleaseASAN,ReleaseUBSAN,ReleaseTSAN>:${JOLT_PROFILE_DEFINE}>")
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
		if (JPH_USE_WASM64)
			target_compile_options(Jolt PUBLIC -sMEMORY64)
			target_link_options(Jolt PUBLIC -sMEMORY64)
		endif()
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

# On Unix flavors we need the pthread library
if (NOT ("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows") AND NOT EMSCRIPTEN)
	target_compile_options(Jolt PUBLIC -pthread)
	target_link_options(Jolt PUBLIC -pthread)
endif()

if (EMSCRIPTEN)
	# We need more than the default 64KB stack and 16MB memory
	# In your application, specify at least -sSTACK_SIZE=1048576 -sINITIAL_MEMORY=134217728
	# Also disable warning: running limited binaryen optimizations because DWARF info requested (or indirectly required)
	target_link_options(Jolt PUBLIC -Wno-limited-postlink-optimizations)
endif()
