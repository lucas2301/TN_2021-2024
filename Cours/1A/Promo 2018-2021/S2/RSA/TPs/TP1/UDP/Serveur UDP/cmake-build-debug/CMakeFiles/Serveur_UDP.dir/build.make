# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "/Users/quentin/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/191.7141.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/quentin/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/191.7141.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Serveur_UDP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Serveur_UDP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Serveur_UDP.dir/flags.make

CMakeFiles/Serveur_UDP.dir/main.c.o: CMakeFiles/Serveur_UDP.dir/flags.make
CMakeFiles/Serveur_UDP.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Serveur_UDP.dir/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Serveur_UDP.dir/main.c.o   -c "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/main.c"

CMakeFiles/Serveur_UDP.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Serveur_UDP.dir/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/main.c" > CMakeFiles/Serveur_UDP.dir/main.c.i

CMakeFiles/Serveur_UDP.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Serveur_UDP.dir/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/main.c" -o CMakeFiles/Serveur_UDP.dir/main.c.s

# Object files for target Serveur_UDP
Serveur_UDP_OBJECTS = \
"CMakeFiles/Serveur_UDP.dir/main.c.o"

# External object files for target Serveur_UDP
Serveur_UDP_EXTERNAL_OBJECTS =

Serveur_UDP: CMakeFiles/Serveur_UDP.dir/main.c.o
Serveur_UDP: CMakeFiles/Serveur_UDP.dir/build.make
Serveur_UDP: CMakeFiles/Serveur_UDP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Serveur_UDP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Serveur_UDP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Serveur_UDP.dir/build: Serveur_UDP

.PHONY : CMakeFiles/Serveur_UDP.dir/build

CMakeFiles/Serveur_UDP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Serveur_UDP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Serveur_UDP.dir/clean

CMakeFiles/Serveur_UDP.dir/depend:
	cd "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug" "/Users/quentin/Library/Mobile Documents/com~apple~CloudDocs/Telecom/Cours/S2/RSA/TPs/TP1/UDP/Serveur UDP/cmake-build-debug/CMakeFiles/Serveur_UDP.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Serveur_UDP.dir/depend
