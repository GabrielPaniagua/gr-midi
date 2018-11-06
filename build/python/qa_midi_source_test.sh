#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/pany/gr-midi/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/pany/gr-midi/build/python:$PATH
export LD_LIBRARY_PATH=/home/pany/gr-midi/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/pany/gr-midi/build/swig:$PYTHONPATH
/usr/bin/python2 /home/pany/gr-midi/python/qa_midi_source.py 
