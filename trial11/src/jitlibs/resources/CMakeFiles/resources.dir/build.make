# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anoushka/workspace/etiss

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anoushka/workspace/etiss/trial11

# Include any dependencies generated for this target.
include src/jitlibs/resources/CMakeFiles/resources.dir/depend.make

# Include the progress variables for this target.
include src/jitlibs/resources/CMakeFiles/resources.dir/progress.make

# Include the compile flags for this target's objects.
include src/jitlibs/resources/CMakeFiles/resources.dir/flags.make

src/jitlibs/resources/CMakeFiles/resources.dir/resources.cpp.o: src/jitlibs/resources/CMakeFiles/resources.dir/flags.make
src/jitlibs/resources/CMakeFiles/resources.dir/resources.cpp.o: ../src/jitlibs/resources/resources.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anoushka/workspace/etiss/trial11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/jitlibs/resources/CMakeFiles/resources.dir/resources.cpp.o"
	cd /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/resources.dir/resources.cpp.o -c /home/anoushka/workspace/etiss/src/jitlibs/resources/resources.cpp

src/jitlibs/resources/CMakeFiles/resources.dir/resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/resources.dir/resources.cpp.i"
	cd /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anoushka/workspace/etiss/src/jitlibs/resources/resources.cpp > CMakeFiles/resources.dir/resources.cpp.i

src/jitlibs/resources/CMakeFiles/resources.dir/resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/resources.dir/resources.cpp.s"
	cd /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anoushka/workspace/etiss/src/jitlibs/resources/resources.cpp -o CMakeFiles/resources.dir/resources.cpp.s

# Object files for target resources
resources_OBJECTS = \
"CMakeFiles/resources.dir/resources.cpp.o"

# External object files for target resources
resources_EXTERNAL_OBJECTS =

src/jitlibs/resources/libresources.a: src/jitlibs/resources/CMakeFiles/resources.dir/resources.cpp.o
src/jitlibs/resources/libresources.a: src/jitlibs/resources/CMakeFiles/resources.dir/build.make
src/jitlibs/resources/libresources.a: src/jitlibs/resources/CMakeFiles/resources.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anoushka/workspace/etiss/trial11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libresources.a"
	cd /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources && $(CMAKE_COMMAND) -P CMakeFiles/resources.dir/cmake_clean_target.cmake
	cd /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/resources.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/jitlibs/resources/CMakeFiles/resources.dir/build: src/jitlibs/resources/libresources.a

.PHONY : src/jitlibs/resources/CMakeFiles/resources.dir/build

src/jitlibs/resources/CMakeFiles/resources.dir/clean:
	cd /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources && $(CMAKE_COMMAND) -P CMakeFiles/resources.dir/cmake_clean.cmake
.PHONY : src/jitlibs/resources/CMakeFiles/resources.dir/clean

src/jitlibs/resources/CMakeFiles/resources.dir/depend:
	cd /home/anoushka/workspace/etiss/trial11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anoushka/workspace/etiss /home/anoushka/workspace/etiss/src/jitlibs/resources /home/anoushka/workspace/etiss/trial11 /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources /home/anoushka/workspace/etiss/trial11/src/jitlibs/resources/CMakeFiles/resources.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/jitlibs/resources/CMakeFiles/resources.dir/depend

