# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/samarafrey/Desktop/Brunel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/samarafrey/Desktop/Brunel/build

# Include any dependencies generated for this target.
include CMakeFiles/unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unittest.dir/flags.make

CMakeFiles/unittest.dir/neuron.cpp.o: CMakeFiles/unittest.dir/flags.make
CMakeFiles/unittest.dir/neuron.cpp.o: ../neuron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/samarafrey/Desktop/Brunel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unittest.dir/neuron.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unittest.dir/neuron.cpp.o -c /Users/samarafrey/Desktop/Brunel/neuron.cpp

CMakeFiles/unittest.dir/neuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/neuron.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/samarafrey/Desktop/Brunel/neuron.cpp > CMakeFiles/unittest.dir/neuron.cpp.i

CMakeFiles/unittest.dir/neuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/neuron.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/samarafrey/Desktop/Brunel/neuron.cpp -o CMakeFiles/unittest.dir/neuron.cpp.s

CMakeFiles/unittest.dir/neuron.cpp.o.requires:

.PHONY : CMakeFiles/unittest.dir/neuron.cpp.o.requires

CMakeFiles/unittest.dir/neuron.cpp.o.provides: CMakeFiles/unittest.dir/neuron.cpp.o.requires
	$(MAKE) -f CMakeFiles/unittest.dir/build.make CMakeFiles/unittest.dir/neuron.cpp.o.provides.build
.PHONY : CMakeFiles/unittest.dir/neuron.cpp.o.provides

CMakeFiles/unittest.dir/neuron.cpp.o.provides.build: CMakeFiles/unittest.dir/neuron.cpp.o


CMakeFiles/unittest.dir/unittest.cpp.o: CMakeFiles/unittest.dir/flags.make
CMakeFiles/unittest.dir/unittest.cpp.o: ../unittest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/samarafrey/Desktop/Brunel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/unittest.dir/unittest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unittest.dir/unittest.cpp.o -c /Users/samarafrey/Desktop/Brunel/unittest.cpp

CMakeFiles/unittest.dir/unittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/unittest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/samarafrey/Desktop/Brunel/unittest.cpp > CMakeFiles/unittest.dir/unittest.cpp.i

CMakeFiles/unittest.dir/unittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/unittest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/samarafrey/Desktop/Brunel/unittest.cpp -o CMakeFiles/unittest.dir/unittest.cpp.s

CMakeFiles/unittest.dir/unittest.cpp.o.requires:

.PHONY : CMakeFiles/unittest.dir/unittest.cpp.o.requires

CMakeFiles/unittest.dir/unittest.cpp.o.provides: CMakeFiles/unittest.dir/unittest.cpp.o.requires
	$(MAKE) -f CMakeFiles/unittest.dir/build.make CMakeFiles/unittest.dir/unittest.cpp.o.provides.build
.PHONY : CMakeFiles/unittest.dir/unittest.cpp.o.provides

CMakeFiles/unittest.dir/unittest.cpp.o.provides.build: CMakeFiles/unittest.dir/unittest.cpp.o


# Object files for target unittest
unittest_OBJECTS = \
"CMakeFiles/unittest.dir/neuron.cpp.o" \
"CMakeFiles/unittest.dir/unittest.cpp.o"

# External object files for target unittest
unittest_EXTERNAL_OBJECTS =

unittest: CMakeFiles/unittest.dir/neuron.cpp.o
unittest: CMakeFiles/unittest.dir/unittest.cpp.o
unittest: CMakeFiles/unittest.dir/build.make
unittest: gtest/libgtest.a
unittest: gtest/libgtest_main.a
unittest: gtest/libgtest.a
unittest: CMakeFiles/unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/samarafrey/Desktop/Brunel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unittest.dir/build: unittest

.PHONY : CMakeFiles/unittest.dir/build

CMakeFiles/unittest.dir/requires: CMakeFiles/unittest.dir/neuron.cpp.o.requires
CMakeFiles/unittest.dir/requires: CMakeFiles/unittest.dir/unittest.cpp.o.requires

.PHONY : CMakeFiles/unittest.dir/requires

CMakeFiles/unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unittest.dir/clean

CMakeFiles/unittest.dir/depend:
	cd /Users/samarafrey/Desktop/Brunel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/samarafrey/Desktop/Brunel /Users/samarafrey/Desktop/Brunel /Users/samarafrey/Desktop/Brunel/build /Users/samarafrey/Desktop/Brunel/build /Users/samarafrey/Desktop/Brunel/build/CMakeFiles/unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unittest.dir/depend

