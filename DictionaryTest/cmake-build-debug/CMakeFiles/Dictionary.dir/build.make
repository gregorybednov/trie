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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Gregory/CLionProjects/DictionaryTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Dictionary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Dictionary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Dictionary.dir/flags.make

CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.o: CMakeFiles/Dictionary.dir/flags.make
CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.o: /mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.o   -c /mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c

CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c > CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.i

CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c -o CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.s

# Object files for target Dictionary
Dictionary_OBJECTS = \
"CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.o"

# External object files for target Dictionary
Dictionary_EXTERNAL_OBJECTS =

libDictionary.a: CMakeFiles/Dictionary.dir/mnt/c/Users/Gregory/CLionProjects/Dictionary/library.c.o
libDictionary.a: CMakeFiles/Dictionary.dir/build.make
libDictionary.a: CMakeFiles/Dictionary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libDictionary.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Dictionary.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Dictionary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Dictionary.dir/build: libDictionary.a

.PHONY : CMakeFiles/Dictionary.dir/build

CMakeFiles/Dictionary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Dictionary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Dictionary.dir/clean

CMakeFiles/Dictionary.dir/depend:
	cd /mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Gregory/CLionProjects/DictionaryTest /mnt/c/Users/Gregory/CLionProjects/DictionaryTest /mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug /mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug /mnt/c/Users/Gregory/CLionProjects/DictionaryTest/cmake-build-debug/CMakeFiles/Dictionary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Dictionary.dir/depend
