# CMake generated Testfile for 
# Source directory: /home/pany/gr-midi/python
# Build directory: /home/pany/gr-midi/build/python
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(qa_midi_source "/bin/sh" "/home/pany/gr-midi/build/python/qa_midi_source_test.sh")
add_test(qa_midi_sink "/bin/sh" "/home/pany/gr-midi/build/python/qa_midi_sink_test.sh")
