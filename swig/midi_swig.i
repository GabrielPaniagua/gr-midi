/* -*- c++ -*- */

#define MIDI_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "midi_swig_doc.i"

%{
#include "midi/midi_pdu_source.h"
#include "midi/midi_pdu_sink.h"
%}


%include "midi/midi_pdu_source.h"
GR_SWIG_BLOCK_MAGIC2(midi, midi_pdu_source);
%include "midi/midi_pdu_sink.h"
GR_SWIG_BLOCK_MAGIC2(midi, midi_pdu_sink);
