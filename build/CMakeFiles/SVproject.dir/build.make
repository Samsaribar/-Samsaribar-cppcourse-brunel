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
include CMakeFiles/SVproject.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SVproject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SVproject.dir/flags.make

CMakeFiles/SVproject.dir/neuron.cpp.o: CMakeFiles/SVproject.dir/flags.make
CMakeFiles/SVproject.dir/neuron.cpp.o: ../neuron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/samarafrey/Desktop/Brunel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SVproject.dir/neuron.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SVproject.dir/neuron.cpp.o -c /Users/samarafrey/Desktop/Brunel/neuron.cpp

CMakeFiles/SVproject.dir/neuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SVproject.dir/neuron.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/samarafrey/Desktop/Brunel/neuron.cpp > CMakeFiles/SVproject.dir/neuron.cpp.i

CMakeFiles/SVproject.dir/neuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SVproject.dir/neuron.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/samarafrey/Desktop/Brunel/neuron.cpp -o CMakeFiles/SVproject.dir/neuron.cpp.s

CMakeFiles/SVproject.dir/neuron.cpp.o.requires:

.PHONY : CMakeFiles/SVproject.dir/neuron.cpp.o.requires

CMakeFiles/SVproject.dir/neuron.cpp.o.provides: CMakeFiles/SVproject.dir/neuron.cpp.o.requires
	$(MAKE) -f CMakeFiles/SVproject.dir/build.make CMakeFiles/SVproject.dir/neuron.cpp.o.provides.build
.PHONY : CMakeFiles/SVproject.dir/neuron.cpp.o.provides

CMakeFiles/SVproject.dir/neuron.cpp.o.provides.build: CMakeFiles/SVproject.dir/neuron.cpp.o


CMakeFiles/SVproject.dir/main.cpp.o: CMakeFiles/SVproject.dir/flags.make
CMakeFiles/SVproject.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/samarafrey/Desktop/Brunel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SVproject.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SVproject.dir/main.cpp.o -c /Users/samarafrey/Desktop/Brunel/main.cpp

CMakeFiles/SVproject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SVproject.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/samarafrey/Desktop/Brunel/main.cpp > CMakeFiles/SVproject.dir/main.cpp.i

CMakeFiles/SVproject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SVproject.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/samarafrey/Desktop/Brunel/main.cpp -o CMakeFiles/SVproject.dir/main.cpp.s

CMakeFiles/SVproject.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/SVproject.dir/main.cpp.o.requires

CMakeFiles/SVproject.dir/main.cpp.o.provides: CMakeFiles/SVproject.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/SVproject.dir/build.make CMakeFiles/SVproject.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/SVproject.dir/main.cpp.o.provides

CMakeFiles/SVproject.dir/main.cpp.o.provides.build: CMakeFiles/SVproject.dir/main.cpp.o


# Object files for target SVproject
SVproject_OBJECTS = \
"CMakeFiles/SVproject.dir/neuron.cpp.o" \
"CMakeFiles/SVproject.dir/main.cpp.o"

# External object files for target SVproject
SVproject_EXTERNAL_OBJECTS =

SVproject: CMakeFiles/SVproject.dir/neuron.cpp.o
SVproject: CMakeFiles/SVproject.dir/main.cpp.o
SVproject: CMakeFiles/SVproject.dir/build.make
SVproject: CMakeFiles/SVproject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/samarafrey/Desktop/Brunel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable SVproject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SVproject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SVproject.dir/build: SVproject

.PHONY : CMakeFiles/SVproject.dir/build

CMakeFiles/SVproject.dir/requires: CMakeFiles/SVproject.dir/neuron.cpp.o.requires
CMakeFiles/SVproject.dir/requires: CMakeFiles/SVproject.dir/main.cpp.o.requires

.PHONY : CMakeFiles/SVproject.dir/requires

CMakeFiles/SVproject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SVproject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SVproject.dir/clean

CMakeFiles/SVproject.dir/depend:
	cd /Users/samarafrey/Desktop/Brunel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/samarafrey/Desktop/Brunel /Users/samarafrey/Desktop/Brunel /Users/samarafrey/Desktop/Brunel/build /Users/samarafrey/Desktop/Brunel/build /Users/samarafrey/Desktop/Brunel/build/CMakeFiles/SVproject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SVproject.dir/depend
