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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pany/gr-midi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pany/gr-midi/build

# Include any dependencies generated for this target.
include swig/CMakeFiles/_midi_swig_swig_tag.dir/depend.make

# Include the progress variables for this target.
include swig/CMakeFiles/_midi_swig_swig_tag.dir/progress.make

# Include the compile flags for this target's objects.
include swig/CMakeFiles/_midi_swig_swig_tag.dir/flags.make

swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o: swig/CMakeFiles/_midi_swig_swig_tag.dir/flags.make
swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o: swig/_midi_swig_swig_tag.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o"
	cd /home/pany/gr-midi/build/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o -c /home/pany/gr-midi/build/swig/_midi_swig_swig_tag.cpp

swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.i"
	cd /home/pany/gr-midi/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pany/gr-midi/build/swig/_midi_swig_swig_tag.cpp > CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.i

swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.s"
	cd /home/pany/gr-midi/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pany/gr-midi/build/swig/_midi_swig_swig_tag.cpp -o CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.s

swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.requires:

.PHONY : swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.requires

swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.provides: swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.requires
	$(MAKE) -f swig/CMakeFiles/_midi_swig_swig_tag.dir/build.make swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.provides.build
.PHONY : swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.provides

swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.provides.build: swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o


# Object files for target _midi_swig_swig_tag
_midi_swig_swig_tag_OBJECTS = \
"CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o"

# External object files for target _midi_swig_swig_tag
_midi_swig_swig_tag_EXTERNAL_OBJECTS =

swig/_midi_swig_swig_tag: swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o
swig/_midi_swig_swig_tag: swig/CMakeFiles/_midi_swig_swig_tag.dir/build.make
swig/_midi_swig_swig_tag: swig/CMakeFiles/_midi_swig_swig_tag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable _midi_swig_swig_tag"
	cd /home/pany/gr-midi/build/swig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_midi_swig_swig_tag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
swig/CMakeFiles/_midi_swig_swig_tag.dir/build: swig/_midi_swig_swig_tag

.PHONY : swig/CMakeFiles/_midi_swig_swig_tag.dir/build

swig/CMakeFiles/_midi_swig_swig_tag.dir/requires: swig/CMakeFiles/_midi_swig_swig_tag.dir/_midi_swig_swig_tag.cpp.o.requires

.PHONY : swig/CMakeFiles/_midi_swig_swig_tag.dir/requires

swig/CMakeFiles/_midi_swig_swig_tag.dir/clean:
	cd /home/pany/gr-midi/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/_midi_swig_swig_tag.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/_midi_swig_swig_tag.dir/clean

swig/CMakeFiles/_midi_swig_swig_tag.dir/depend:
	cd /home/pany/gr-midi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pany/gr-midi /home/pany/gr-midi/swig /home/pany/gr-midi/build /home/pany/gr-midi/build/swig /home/pany/gr-midi/build/swig/CMakeFiles/_midi_swig_swig_tag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/_midi_swig_swig_tag.dir/depend
