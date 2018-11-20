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

#ifndef INCLUDED_MIDI_MIDI_PDU_SINK_IMPL_H
#define INCLUDED_MIDI_MIDI_PDU_SINK_IMPL_H

#include <midi/midi_pdu_sink.h>
#include "rtmidi/RtMidi.h"

namespace gr {
  namespace midi {

    class midi_pdu_sink_impl : public midi_pdu_sink
    {
     private:
      RtMidiOut *d_midiOut;
	  void print_pdu(pmt::pmt_t pdu);
	  
     public:
      midi_pdu_sink_impl();
      ~midi_pdu_sink_impl();

	  void callback_midi_sink_pdu(pmt::pmt_t pdu);

      // Where all the action really happens
      void forecast (int noutput_items, gr_vector_int &ninput_items_required);

      int general_work(int noutput_items,
           gr_vector_int &ninput_items,
           gr_vector_const_void_star &input_items,
           gr_vector_void_star &output_items);
    };

  } // namespace midi
} // namespace gr

#endif /* INCLUDED_MIDI_MIDI_PDU_SINK_IMPL_H */

