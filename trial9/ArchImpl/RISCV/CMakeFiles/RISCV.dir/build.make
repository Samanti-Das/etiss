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
CMAKE_BINARY_DIR = /home/anoushka/workspace/etiss/trial9

# Include any dependencies generated for this target.
include ArchImpl/RISCV/CMakeFiles/RISCV.dir/depend.make

# Include the progress variables for this target.
include ArchImpl/RISCV/CMakeFiles/RISCV.dir/progress.make

# Include the compile flags for this target's objects.
include ArchImpl/RISCV/CMakeFiles/RISCV.dir/flags.make

ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArch.cpp.o: ArchImpl/RISCV/CMakeFiles/RISCV.dir/flags.make
ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArch.cpp.o: ../ArchImpl/RISCV/RISCVArch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anoushka/workspace/etiss/trial9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArch.cpp.o"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RISCV.dir/RISCVArch.cpp.o -c /home/anoushka/workspace/etiss/ArchImpl/RISCV/RISCVArch.cpp

ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RISCV.dir/RISCVArch.cpp.i"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anoushka/workspace/etiss/ArchImpl/RISCV/RISCVArch.cpp > CMakeFiles/RISCV.dir/RISCVArch.cpp.i

ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RISCV.dir/RISCVArch.cpp.s"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anoushka/workspace/etiss/ArchImpl/RISCV/RISCVArch.cpp -o CMakeFiles/RISCV.dir/RISCVArch.cpp.s

ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArchLib.cpp.o: ArchImpl/RISCV/CMakeFiles/RISCV.dir/flags.make
ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArchLib.cpp.o: ../ArchImpl/RISCV/RISCVArchLib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anoushka/workspace/etiss/trial9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArchLib.cpp.o"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RISCV.dir/RISCVArchLib.cpp.o -c /home/anoushka/workspace/etiss/ArchImpl/RISCV/RISCVArchLib.cpp

ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArchLib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RISCV.dir/RISCVArchLib.cpp.i"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anoushka/workspace/etiss/ArchImpl/RISCV/RISCVArchLib.cpp > CMakeFiles/RISCV.dir/RISCVArchLib.cpp.i

ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArchLib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RISCV.dir/RISCVArchLib.cpp.s"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anoushka/workspace/etiss/ArchImpl/RISCV/RISCVArchLib.cpp -o CMakeFiles/RISCV.dir/RISCVArchLib.cpp.s

# Object files for target RISCV
RISCV_OBJECTS = \
"CMakeFiles/RISCV.dir/RISCVArch.cpp.o" \
"CMakeFiles/RISCV.dir/RISCVArchLib.cpp.o"

# External object files for target RISCV
RISCV_EXTERNAL_OBJECTS =

ArchImpl/RISCV/libRISCV.so: ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArch.cpp.o
ArchImpl/RISCV/libRISCV.so: ArchImpl/RISCV/CMakeFiles/RISCV.dir/RISCVArchLib.cpp.o
ArchImpl/RISCV/libRISCV.so: ArchImpl/RISCV/CMakeFiles/RISCV.dir/build.make
ArchImpl/RISCV/libRISCV.so: libETISS.so
ArchImpl/RISCV/libRISCV.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
ArchImpl/RISCV/libRISCV.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
ArchImpl/RISCV/libRISCV.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
ArchImpl/RISCV/libRISCV.so: ArchImpl/RISCV/CMakeFiles/RISCV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anoushka/workspace/etiss/trial9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libRISCV.so"
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RISCV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ArchImpl/RISCV/CMakeFiles/RISCV.dir/build: ArchImpl/RISCV/libRISCV.so

.PHONY : ArchImpl/RISCV/CMakeFiles/RISCV.dir/build

ArchImpl/RISCV/CMakeFiles/RISCV.dir/clean:
	cd /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV && $(CMAKE_COMMAND) -P CMakeFiles/RISCV.dir/cmake_clean.cmake
.PHONY : ArchImpl/RISCV/CMakeFiles/RISCV.dir/clean

ArchImpl/RISCV/CMakeFiles/RISCV.dir/depend:
	cd /home/anoushka/workspace/etiss/trial9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anoushka/workspace/etiss /home/anoushka/workspace/etiss/ArchImpl/RISCV /home/anoushka/workspace/etiss/trial9 /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV /home/anoushka/workspace/etiss/trial9/ArchImpl/RISCV/CMakeFiles/RISCV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ArchImpl/RISCV/CMakeFiles/RISCV.dir/depend

