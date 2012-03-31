# Install script for directory: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/libasebacore.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/libasebacompiler.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/libasebavm.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/libasebavmbuffer.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aseba/utils" TYPE FILE FILES
    "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/utils/utils.h"
    "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/utils/FormatableString.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aseba/msg" TYPE FILE FILES
    "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/msg/msg.h"
    "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/msg/descriptions-manager.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aseba/common" TYPE FILE FILES
    "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/common/consts.h"
    "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/common/types.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aseba/compiler" TYPE FILE FILES "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/compiler/compiler.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/medulla/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/cmd/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/dump/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/replay/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/studio/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/targets/enki-marxbot/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/targets/challenge/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/targets/playground/cmake_install.cmake")
  INCLUDE("/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/eventlogger/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
