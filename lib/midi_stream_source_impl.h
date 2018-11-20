/* -*- c++ -*- */
/* 
 * Copyright 2018 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef INCLUDED_MIDI_MIDI_STREAM_SOURCE_IMPL_H
#define INCLUDED_MIDI_MIDI_STREAM_SOURCE_IMPL_H

#include <midi/midi_stream_source.h>
#include "rtmidi/RtMidi.h"

namespace gr {
  namespace midi {

    class midi_stream_source_impl : public midi_stream_source
    {
     private:
      RtMidiIn *d_midiIn;
  	  int d_currentState;
  	  int d_vec_limit;
      int d_position;
	  int d_count;
      double d_stamp;
	  std::vector< unsigned char > d_message;

     public:
      midi_stream_source_impl();
      ~midi_stream_source_impl();

      // Where all the action really happens
      int work(int noutput_items,
         gr_vector_const_void_star &input_items,
         gr_vector_void_star &output_items);
    };

  } // namespace midi
} // namespace gr

#endif /* INCLUDED_MIDI_MIDI_STREAM_SOURCE_IMPL_H */

