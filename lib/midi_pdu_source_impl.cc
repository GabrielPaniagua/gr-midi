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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "midi_pdu_source_impl.h"

namespace gr {
  namespace midi {

    midi_pdu_source::sptr
    midi_pdu_source::make()
    {
      return gnuradio::get_initial_sptr
        (new midi_pdu_source_impl());
    }

	void midi_pdu_source_impl::callback_midi_source_pdu( double deltatime, std::vector< unsigned char > *message, void *userData ){
		unsigned int nBytes = message->size();
		std::vector< unsigned char > &vect = *message;
		midi_pdu_source_impl* this_object = (midi_pdu_source_impl*)userData;
		this_object->message_port_pub(pmt::mp("midiOut"),
			pmt::cons(pmt::PMT_NIL,
			pmt::init_u8vector(nBytes, vect)));
	}

    /*
     * The private constructor
     */
    midi_pdu_source_impl::midi_pdu_source_impl()
      : gr::block("midi_pdu_source",
              gr::io_signature::make(0,0,0),
              gr::io_signature::make(0,0,0))
    {
		//inicializacion de puerto midi in
	  try {
	    d_midiIn = new RtMidiIn();
	  }catch ( RtMidiError &error ) {
	    error.printMessage();
	  }
	  try {
		d_midiIn->openVirtualPort();
	  }catch ( RtMidiError &error ) {
		error.printMessage();
	  }
	  
      message_port_register_out(pmt::mp("midiOut"));
      // queue instead of sent to the callback function.
      d_midiIn->setCallback( this->callback_midi_source_pdu, (void*)this );
      //d_midiin->setCallback( &mycallbackmidi);
      // Don't ignore sysex, timing, or active sensing messages.
      d_midiIn->ignoreTypes( false, false, false );
	}

    /*
     * Our virtual destructor.
     */
    midi_pdu_source_impl::~midi_pdu_source_impl()
    {
    }

    void
    midi_pdu_source_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
    }

    int
    midi_pdu_source_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
      consume_each (noutput_items);
      return noutput_items;
    }

  } /* namespace midi */
} /* namespace gr */

