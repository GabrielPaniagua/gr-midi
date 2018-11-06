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
#include "midi_sink_impl.h"

namespace gr {
  namespace midi {

    midi_sink::sptr
    midi_sink::make()
    {
      return gnuradio::get_initial_sptr
        (new midi_sink_impl());
    }

	void midi_sink_impl::print_pdu(pmt::pmt_t pdu)
    {
      pmt::pmt_t meta = pmt::car(pdu);
      pmt::pmt_t vector = pmt::cdr(pdu);
      size_t len = pmt::blob_length(vector);
      size_t offset(0);
      const uint8_t* d = (const uint8_t*) pmt::uniform_vector_elements(vector, offset);
      std::vector<unsigned char> message;
      for(size_t i=0; i<len; i++){
        message.push_back(d[i]);
		//printf("%02x ",d[i] );
      }
      d_midiOut->sendMessage( &message );
	}

    /*
     * The private constructor
     */
    midi_sink_impl::midi_sink_impl()
      : gr::block("midi_sink",
              gr::io_signature::make(0,0,0),
              gr::io_signature::make(0,0,0))
    {
	  //inicializacion de puerto midi in
	  try {
	    d_midiOut = new RtMidiOut();
	  }catch ( RtMidiError &error ) {
	    error.printMessage();
	  }
	  try {
		d_midiOut->openVirtualPort();
	  }catch ( RtMidiError &error ) {
		error.printMessage();
	  }
	  message_port_register_in(pmt::mp("midiIn"));
	  set_msg_handler(pmt::mp("midiIn"), boost::bind(&midi_sink_impl::print_pdu, this, _1));
	}

    /*
     * Our virtual destructor.
     */
    midi_sink_impl::~midi_sink_impl()
    {
    }

    void
    midi_sink_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
    }

    int
    midi_sink_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
      consume_each (noutput_items);
      return noutput_items;
    }
    
    

  } /* namespace midi */
} /* namespace gr */

