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
include swig/CMakeFiles/midi_swig_swig_2d0df.dir/depend.make

# Include the progress variables for this target.
include swig/CMakeFiles/midi_swig_swig_2d0df.dir/progress.make

# Include the compile flags for this target's objects.
include swig/CMakeFiles/midi_swig_swig_2d0df.dir/flags.make

swig/midi_swig_swig_2d0df.cpp: ../swig/midi_swig.i
swig/midi_swig_swig_2d0df.cpp: ../swig/midi_swig.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gr_swig_block_magic.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gr_logger.i
swig/midi_swig_swig_2d0df.cpp: swig/midi_swig_doc.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/block_gateway.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/tags.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/top_block.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/sync_block.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/msg_queue.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/io_signature.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gnuradio.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/buffer.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/sync_decimator.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gr_types.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/message.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/hier_block2.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/block.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/basic_block.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/runtime_swig_doc.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/sync_interpolator.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gr_ctrlport.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/feval.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gr_shared_ptr.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/prefs.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/msg_handler.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/constants.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/gr_extras.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/runtime_swig.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/tagged_stream_block.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/realtime.i
swig/midi_swig_swig_2d0df.cpp: /usr/include/gnuradio/swig/block_detail.i
swig/midi_swig_swig_2d0df.cpp: swig/midi_swig.tag
	cd /home/pany/gr-midi/build/swig && /usr/bin/cmake -E copy /home/pany/gr-midi/build/swig/midi_swig_swig_2d0df.cpp.in /home/pany/gr-midi/build/swig/midi_swig_swig_2d0df.cpp

swig/midi_swig.tag: swig/_midi_swig_swig_tag
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating midi_swig.tag"
	cd /home/pany/gr-midi/build/swig && ./_midi_swig_swig_tag
	cd /home/pany/gr-midi/build/swig && /usr/bin/cmake -E touch /home/pany/gr-midi/build/swig/midi_swig.tag

swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o: swig/CMakeFiles/midi_swig_swig_2d0df.dir/flags.make
swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o: swig/midi_swig_swig_2d0df.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o"
	cd /home/pany/gr-midi/build/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o -c /home/pany/gr-midi/build/swig/midi_swig_swig_2d0df.cpp

swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.i"
	cd /home/pany/gr-midi/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pany/gr-midi/build/swig/midi_swig_swig_2d0df.cpp > CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.i

swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.s"
	cd /home/pany/gr-midi/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pany/gr-midi/build/swig/midi_swig_swig_2d0df.cpp -o CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.s

swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.requires:

.PHONY : swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.requires

swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.provides: swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.requires
	$(MAKE) -f swig/CMakeFiles/midi_swig_swig_2d0df.dir/build.make swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.provides.build
.PHONY : swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.provides

swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.provides.build: swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o


# Object files for target midi_swig_swig_2d0df
midi_swig_swig_2d0df_OBJECTS = \
"CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o"

# External object files for target midi_swig_swig_2d0df
midi_swig_swig_2d0df_EXTERNAL_OBJECTS =

swig/midi_swig_swig_2d0df: swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o
swig/midi_swig_swig_2d0df: swig/CMakeFiles/midi_swig_swig_2d0df.dir/build.make
swig/midi_swig_swig_2d0df: swig/CMakeFiles/midi_swig_swig_2d0df.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pany/gr-midi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable midi_swig_swig_2d0df"
	cd /home/pany/gr-midi/build/swig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/midi_swig_swig_2d0df.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Swig source"
	cd /home/pany/gr-midi/build/swig && /usr/bin/cmake -E make_directory /home/pany/gr-midi/build/swig
	cd /home/pany/gr-midi/build/swig && /usr/bin/swig3.0 -python -fvirtual -modern -keyword -w511 -module midi_swig -outdir /home/pany/gr-midi/build/swig -c++ -I/home/pany/gr-midi/lib -I/home/pany/gr-midi/include -I/home/pany/gr-midi/build/lib -I/home/pany/gr-midi/build/include -I/usr/include -I/home/pany/gr-midi/build/swig -I/home/pany/gr-midi/swig -I/usr/include/gnuradio/swig -I/usr/include/python2.7 -o /home/pany/gr-midi/build/swig/midi_swigPYTHON_wrap.cxx /home/pany/gr-midi/swig/midi_swig.i

# Rule to build all files generated by this target.
swig/CMakeFiles/midi_swig_swig_2d0df.dir/build: swig/midi_swig_swig_2d0df

.PHONY : swig/CMakeFiles/midi_swig_swig_2d0df.dir/build

swig/CMakeFiles/midi_swig_swig_2d0df.dir/requires: swig/CMakeFiles/midi_swig_swig_2d0df.dir/midi_swig_swig_2d0df.cpp.o.requires

.PHONY : swig/CMakeFiles/midi_swig_swig_2d0df.dir/requires

swig/CMakeFiles/midi_swig_swig_2d0df.dir/clean:
	cd /home/pany/gr-midi/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/midi_swig_swig_2d0df.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/midi_swig_swig_2d0df.dir/clean

swig/CMakeFiles/midi_swig_swig_2d0df.dir/depend: swig/midi_swig_swig_2d0df.cpp
swig/CMakeFiles/midi_swig_swig_2d0df.dir/depend: swig/midi_swig.tag
	cd /home/pany/gr-midi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pany/gr-midi /home/pany/gr-midi/swig /home/pany/gr-midi/build /home/pany/gr-midi/build/swig /home/pany/gr-midi/build/swig/CMakeFiles/midi_swig_swig_2d0df.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/midi_swig_swig_2d0df.dir/depend
