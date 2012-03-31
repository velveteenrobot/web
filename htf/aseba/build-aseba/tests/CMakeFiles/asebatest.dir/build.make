# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba

# Include any dependencies generated for this target.
include tests/CMakeFiles/asebatest.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/asebatest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/asebatest.dir/flags.make

tests/CMakeFiles/asebatest.dir/asebatest.cpp.o: tests/CMakeFiles/asebatest.dir/flags.make
tests/CMakeFiles/asebatest.dir/asebatest.cpp.o: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/asebatest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/asebatest.dir/asebatest.cpp.o"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/asebatest.dir/asebatest.cpp.o -c /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/asebatest.cpp

tests/CMakeFiles/asebatest.dir/asebatest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asebatest.dir/asebatest.cpp.i"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/asebatest.cpp > CMakeFiles/asebatest.dir/asebatest.cpp.i

tests/CMakeFiles/asebatest.dir/asebatest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asebatest.dir/asebatest.cpp.s"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/asebatest.cpp -o CMakeFiles/asebatest.dir/asebatest.cpp.s

tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.requires:
.PHONY : tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.requires

tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.provides: tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/asebatest.dir/build.make tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.provides.build
.PHONY : tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.provides

tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.provides.build: tests/CMakeFiles/asebatest.dir/asebatest.cpp.o
.PHONY : tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.provides.build

# Object files for target asebatest
asebatest_OBJECTS = \
"CMakeFiles/asebatest.dir/asebatest.cpp.o"

# External object files for target asebatest
asebatest_EXTERNAL_OBJECTS =

tests/asebatest: tests/CMakeFiles/asebatest.dir/asebatest.cpp.o
tests/asebatest: libasebacompiler.a
tests/asebatest: libasebavm.a
tests/asebatest: libasebacore.a
tests/asebatest: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-dashel/libdashel.a
tests/asebatest: tests/CMakeFiles/asebatest.dir/build.make
tests/asebatest: tests/CMakeFiles/asebatest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable asebatest"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asebatest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/asebatest.dir/build: tests/asebatest
.PHONY : tests/CMakeFiles/asebatest.dir/build

tests/CMakeFiles/asebatest.dir/requires: tests/CMakeFiles/asebatest.dir/asebatest.cpp.o.requires
.PHONY : tests/CMakeFiles/asebatest.dir/requires

tests/CMakeFiles/asebatest.dir/clean:
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests && $(CMAKE_COMMAND) -P CMakeFiles/asebatest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/asebatest.dir/clean

tests/CMakeFiles/asebatest.dir/depend:
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests/CMakeFiles/asebatest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/asebatest.dir/depend

