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
include lib/CMakeFiles/gnuradio-midi.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/gnuradio-midi.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/gnuradio-midi.dir/flags.make

lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o: lib/CMakeFiles/gnuradio-midi.dir/flags.make
lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o: ../lib/rtmidi/RtMidi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o -c /home/pany/gr-midi/lib/rtmidi/RtMidi.cpp

lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.i"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pany/gr-midi/lib/rtmidi/RtMidi.cpp > CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.i

lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.s"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pany/gr-midi/lib/rtmidi/RtMidi.cpp -o CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.s

lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.requires:

.PHONY : lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.requires

lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.provides: lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-midi.dir/build.make lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.provides

lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.provides.build: lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o


lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o: lib/CMakeFiles/gnuradio-midi.dir/flags.make
lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o: ../lib/midi_source_impl.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o -c /home/pany/gr-midi/lib/midi_source_impl.cc

lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.i"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pany/gr-midi/lib/midi_source_impl.cc > CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.i

lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.s"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pany/gr-midi/lib/midi_source_impl.cc -o CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.s

lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.requires:

.PHONY : lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.requires

lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.provides: lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-midi.dir/build.make lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.provides

lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o


lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o: lib/CMakeFiles/gnuradio-midi.dir/flags.make
lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o: ../lib/midi_sink_impl.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o -c /home/pany/gr-midi/lib/midi_sink_impl.cc

lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.i"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pany/gr-midi/lib/midi_sink_impl.cc > CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.i

lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.s"
	cd /home/pany/gr-midi/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pany/gr-midi/lib/midi_sink_impl.cc -o CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.s

lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.requires:

.PHONY : lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.requires

lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.provides: lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-midi.dir/build.make lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.provides

lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o


# Object files for target gnuradio-midi
gnuradio__midi_OBJECTS = \
"CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o" \
"CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o" \
"CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o"

# External object files for target gnuradio-midi
gnuradio__midi_EXTERNAL_OBJECTS =

lib/libgnuradio-midi.so: lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o
lib/libgnuradio-midi.so: lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o
lib/libgnuradio-midi.so: lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o
lib/libgnuradio-midi.so: lib/CMakeFiles/gnuradio-midi.dir/build.make
lib/libgnuradio-midi.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/libgnuradio-midi.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/libgnuradio-midi.so: /usr/lib/x86_64-linux-gnu/libgnuradio-runtime.so
lib/libgnuradio-midi.so: /usr/lib/x86_64-linux-gnu/libgnuradio-pmt.so
lib/libgnuradio-midi.so: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
lib/libgnuradio-midi.so: /usr/lib/x86_64-linux-gnu/libjack.so
lib/libgnuradio-midi.so: lib/CMakeFiles/gnuradio-midi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libgnuradio-midi.so"
	cd /home/pany/gr-midi/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gnuradio-midi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/gnuradio-midi.dir/build: lib/libgnuradio-midi.so

.PHONY : lib/CMakeFiles/gnuradio-midi.dir/build

lib/CMakeFiles/gnuradio-midi.dir/requires: lib/CMakeFiles/gnuradio-midi.dir/rtmidi/RtMidi.cpp.o.requires
lib/CMakeFiles/gnuradio-midi.dir/requires: lib/CMakeFiles/gnuradio-midi.dir/midi_source_impl.cc.o.requires
lib/CMakeFiles/gnuradio-midi.dir/requires: lib/CMakeFiles/gnuradio-midi.dir/midi_sink_impl.cc.o.requires

.PHONY : lib/CMakeFiles/gnuradio-midi.dir/requires

lib/CMakeFiles/gnuradio-midi.dir/clean:
	cd /home/pany/gr-midi/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/gnuradio-midi.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/gnuradio-midi.dir/clean

lib/CMakeFiles/gnuradio-midi.dir/depend:
	cd /home/pany/gr-midi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pany/gr-midi /home/pany/gr-midi/lib /home/pany/gr-midi/build /home/pany/gr-midi/build/lib /home/pany/gr-midi/build/lib/CMakeFiles/gnuradio-midi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/gnuradio-midi.dir/depend
