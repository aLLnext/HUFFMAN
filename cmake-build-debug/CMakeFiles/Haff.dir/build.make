# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/toxaxab/Программы/CLion-2018.1.3/clion-2018.1.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/toxaxab/Программы/CLion-2018.1.3/clion-2018.1.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/toxaxab/CLionProjects/Haff

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toxaxab/CLionProjects/Haff/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Haff.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Haff.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Haff.dir/flags.make

CMakeFiles/Haff.dir/main.c.o: CMakeFiles/Haff.dir/flags.make
CMakeFiles/Haff.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toxaxab/CLionProjects/Haff/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Haff.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Haff.dir/main.c.o   -c /home/toxaxab/CLionProjects/Haff/main.c

CMakeFiles/Haff.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Haff.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toxaxab/CLionProjects/Haff/main.c > CMakeFiles/Haff.dir/main.c.i

CMakeFiles/Haff.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Haff.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toxaxab/CLionProjects/Haff/main.c -o CMakeFiles/Haff.dir/main.c.s

CMakeFiles/Haff.dir/main.c.o.requires:

.PHONY : CMakeFiles/Haff.dir/main.c.o.requires

CMakeFiles/Haff.dir/main.c.o.provides: CMakeFiles/Haff.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Haff.dir/build.make CMakeFiles/Haff.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Haff.dir/main.c.o.provides

CMakeFiles/Haff.dir/main.c.o.provides.build: CMakeFiles/Haff.dir/main.c.o


CMakeFiles/Haff.dir/coder.c.o: CMakeFiles/Haff.dir/flags.make
CMakeFiles/Haff.dir/coder.c.o: ../coder.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toxaxab/CLionProjects/Haff/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Haff.dir/coder.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Haff.dir/coder.c.o   -c /home/toxaxab/CLionProjects/Haff/coder.c

CMakeFiles/Haff.dir/coder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Haff.dir/coder.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toxaxab/CLionProjects/Haff/coder.c > CMakeFiles/Haff.dir/coder.c.i

CMakeFiles/Haff.dir/coder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Haff.dir/coder.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toxaxab/CLionProjects/Haff/coder.c -o CMakeFiles/Haff.dir/coder.c.s

CMakeFiles/Haff.dir/coder.c.o.requires:

.PHONY : CMakeFiles/Haff.dir/coder.c.o.requires

CMakeFiles/Haff.dir/coder.c.o.provides: CMakeFiles/Haff.dir/coder.c.o.requires
	$(MAKE) -f CMakeFiles/Haff.dir/build.make CMakeFiles/Haff.dir/coder.c.o.provides.build
.PHONY : CMakeFiles/Haff.dir/coder.c.o.provides

CMakeFiles/Haff.dir/coder.c.o.provides.build: CMakeFiles/Haff.dir/coder.c.o


CMakeFiles/Haff.dir/bits.c.o: CMakeFiles/Haff.dir/flags.make
CMakeFiles/Haff.dir/bits.c.o: ../bits.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toxaxab/CLionProjects/Haff/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Haff.dir/bits.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Haff.dir/bits.c.o   -c /home/toxaxab/CLionProjects/Haff/bits.c

CMakeFiles/Haff.dir/bits.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Haff.dir/bits.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toxaxab/CLionProjects/Haff/bits.c > CMakeFiles/Haff.dir/bits.c.i

CMakeFiles/Haff.dir/bits.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Haff.dir/bits.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toxaxab/CLionProjects/Haff/bits.c -o CMakeFiles/Haff.dir/bits.c.s

CMakeFiles/Haff.dir/bits.c.o.requires:

.PHONY : CMakeFiles/Haff.dir/bits.c.o.requires

CMakeFiles/Haff.dir/bits.c.o.provides: CMakeFiles/Haff.dir/bits.c.o.requires
	$(MAKE) -f CMakeFiles/Haff.dir/build.make CMakeFiles/Haff.dir/bits.c.o.provides.build
.PHONY : CMakeFiles/Haff.dir/bits.c.o.provides

CMakeFiles/Haff.dir/bits.c.o.provides.build: CMakeFiles/Haff.dir/bits.c.o


CMakeFiles/Haff.dir/decoder.c.o: CMakeFiles/Haff.dir/flags.make
CMakeFiles/Haff.dir/decoder.c.o: ../decoder.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toxaxab/CLionProjects/Haff/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Haff.dir/decoder.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Haff.dir/decoder.c.o   -c /home/toxaxab/CLionProjects/Haff/decoder.c

CMakeFiles/Haff.dir/decoder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Haff.dir/decoder.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toxaxab/CLionProjects/Haff/decoder.c > CMakeFiles/Haff.dir/decoder.c.i

CMakeFiles/Haff.dir/decoder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Haff.dir/decoder.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toxaxab/CLionProjects/Haff/decoder.c -o CMakeFiles/Haff.dir/decoder.c.s

CMakeFiles/Haff.dir/decoder.c.o.requires:

.PHONY : CMakeFiles/Haff.dir/decoder.c.o.requires

CMakeFiles/Haff.dir/decoder.c.o.provides: CMakeFiles/Haff.dir/decoder.c.o.requires
	$(MAKE) -f CMakeFiles/Haff.dir/build.make CMakeFiles/Haff.dir/decoder.c.o.provides.build
.PHONY : CMakeFiles/Haff.dir/decoder.c.o.provides

CMakeFiles/Haff.dir/decoder.c.o.provides.build: CMakeFiles/Haff.dir/decoder.c.o


# Object files for target Haff
Haff_OBJECTS = \
"CMakeFiles/Haff.dir/main.c.o" \
"CMakeFiles/Haff.dir/coder.c.o" \
"CMakeFiles/Haff.dir/bits.c.o" \
"CMakeFiles/Haff.dir/decoder.c.o"

# External object files for target Haff
Haff_EXTERNAL_OBJECTS =

Haff: CMakeFiles/Haff.dir/main.c.o
Haff: CMakeFiles/Haff.dir/coder.c.o
Haff: CMakeFiles/Haff.dir/bits.c.o
Haff: CMakeFiles/Haff.dir/decoder.c.o
Haff: CMakeFiles/Haff.dir/build.make
Haff: CMakeFiles/Haff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toxaxab/CLionProjects/Haff/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Haff"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Haff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Haff.dir/build: Haff

.PHONY : CMakeFiles/Haff.dir/build

CMakeFiles/Haff.dir/requires: CMakeFiles/Haff.dir/main.c.o.requires
CMakeFiles/Haff.dir/requires: CMakeFiles/Haff.dir/coder.c.o.requires
CMakeFiles/Haff.dir/requires: CMakeFiles/Haff.dir/bits.c.o.requires
CMakeFiles/Haff.dir/requires: CMakeFiles/Haff.dir/decoder.c.o.requires

.PHONY : CMakeFiles/Haff.dir/requires

CMakeFiles/Haff.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Haff.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Haff.dir/clean

CMakeFiles/Haff.dir/depend:
	cd /home/toxaxab/CLionProjects/Haff/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toxaxab/CLionProjects/Haff /home/toxaxab/CLionProjects/Haff /home/toxaxab/CLionProjects/Haff/cmake-build-debug /home/toxaxab/CLionProjects/Haff/cmake-build-debug /home/toxaxab/CLionProjects/Haff/cmake-build-debug/CMakeFiles/Haff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Haff.dir/depend
