
if(ANDROID_NDK_TOOLCHAIN_INCLUDED)
  return()
endif(ANDROID_NDK_TOOLCHAIN_INCLUDED)
include($ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake)

## Build without debug symbols in Release mode and add RelWithDebInfo mode.
foreach(_var ANDROID_COMPILER_FLAGS CMAKE_C_FLAGS CMAKE_CXX_FLAGS CMAKE_ASM_FLAGS)
  string(REPLACE "-g " "" ${_var} "${${_var}}")
  set(${_var}_DEBUG "-g ${${_var}_DEBUG}")
  set(${_var}_RELWITHDEBINFO "-g ${${_var}_RELEASE}")
endforeach()
unset(_var)

if(ANDROID_TOOLCHAIN STREQUAL clang)
  list(APPEND ANDROID_COMPILER_FLAGS_RELWITHDEBINFO -fno-limit-debug-info)
endif()
