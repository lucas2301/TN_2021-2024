# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = "/Users/quentin/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.5429.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/quentin/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.5429.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/TD2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TD2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TD2.dir/flags.make

CMakeFiles/TD2.dir/main.c.o: CMakeFiles/TD2.dir/flags.make
CMakeFiles/TD2.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TD2.dir/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TD2.dir/main.c.o   -c "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/main.c"

CMakeFiles/TD2.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TD2.dir/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/main.c" > CMakeFiles/TD2.dir/main.c.i

CMakeFiles/TD2.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TD2.dir/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/main.c" -o CMakeFiles/TD2.dir/main.c.s

# Object files for target TD2
TD2_OBJECTS = \
"CMakeFiles/TD2.dir/main.c.o"

# External object files for target TD2
TD2_EXTERNAL_OBJECTS =

TD2: CMakeFiles/TD2.dir/main.c.o
TD2: CMakeFiles/TD2.dir/build.make
TD2: CMakeFiles/TD2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable TD2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TD2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TD2.dir/build: TD2

.PHONY : CMakeFiles/TD2.dir/build

CMakeFiles/TD2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TD2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TD2.dir/clean

CMakeFiles/TD2.dir/depend:
	cd "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/C - Shell/C/TDs/TD2/cmake-build-debug/CMakeFiles/TD2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/TD2.dir/depend
