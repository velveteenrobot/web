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
include switch/CMakeFiles/asebaswitch.dir/depend.make

# Include the progress variables for this target.
include switch/CMakeFiles/asebaswitch.dir/progress.make

# Include the compile flags for this target's objects.
include switch/CMakeFiles/asebaswitch.dir/flags.make

switch/CMakeFiles/asebaswitch.dir/switch.cpp.o: switch/CMakeFiles/asebaswitch.dir/flags.make
switch/CMakeFiles/asebaswitch.dir/switch.cpp.o: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/switch/switch.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object switch/CMakeFiles/asebaswitch.dir/switch.cpp.o"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/asebaswitch.dir/switch.cpp.o -c /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/switch/switch.cpp

switch/CMakeFiles/asebaswitch.dir/switch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asebaswitch.dir/switch.cpp.i"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/switch/switch.cpp > CMakeFiles/asebaswitch.dir/switch.cpp.i

switch/CMakeFiles/asebaswitch.dir/switch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asebaswitch.dir/switch.cpp.s"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/switch/switch.cpp -o CMakeFiles/asebaswitch.dir/switch.cpp.s

switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.requires:
.PHONY : switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.requires

switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.provides: switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.requires
	$(MAKE) -f switch/CMakeFiles/asebaswitch.dir/build.make switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.provides.build
.PHONY : switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.provides

switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.provides.build: switch/CMakeFiles/asebaswitch.dir/switch.cpp.o
.PHONY : switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.provides.build

# Object files for target asebaswitch
asebaswitch_OBJECTS = \
"CMakeFiles/asebaswitch.dir/switch.cpp.o"

# External object files for target asebaswitch
asebaswitch_EXTERNAL_OBJECTS =

switch/asebaswitch: switch/CMakeFiles/asebaswitch.dir/switch.cpp.o
switch/asebaswitch: libasebacore.a
switch/asebaswitch: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-dashel/libdashel.a
switch/asebaswitch: switch/CMakeFiles/asebaswitch.dir/build.make
switch/asebaswitch: switch/CMakeFiles/asebaswitch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable asebaswitch"
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asebaswitch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
switch/CMakeFiles/asebaswitch.dir/build: switch/asebaswitch
.PHONY : switch/CMakeFiles/asebaswitch.dir/build

switch/CMakeFiles/asebaswitch.dir/requires: switch/CMakeFiles/asebaswitch.dir/switch.cpp.o.requires
.PHONY : switch/CMakeFiles/asebaswitch.dir/requires

switch/CMakeFiles/asebaswitch.dir/clean:
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch && $(CMAKE_COMMAND) -P CMakeFiles/asebaswitch.dir/cmake_clean.cmake
.PHONY : switch/CMakeFiles/asebaswitch.dir/clean

switch/CMakeFiles/asebaswitch.dir/depend:
	cd /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/switch /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/switch/CMakeFiles/asebaswitch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : switch/CMakeFiles/asebaswitch.dir/depend

