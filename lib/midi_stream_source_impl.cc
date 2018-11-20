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
#include "midi_stream_source_impl.h"

//status of emision
#define ST_IDLE 1001
#define ST_SEND 1002
#define ST_START 1003

namespace gr {
  namespace midi {

    midi_stream_source::sptr
    midi_stream_source::make()
    {
      return gnuradio::get_initial_sptr
        (new midi_stream_source_impl());
    }
    /*
     * The private constructor
     */
    midi_stream_source_impl::midi_stream_source_impl()
      : gr::sync_block("midi_stream_source",
              gr::io_signature::make(0, 0, 0),
              gr::io_signature::make(1, 1, sizeof(unsigned char)))
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
	  d_currentState = ST_IDLE;
	  d_position = 0;
	  d_vec_limit = 0;
	  d_count = 7;
	}

    /*
     * Our virtual destructor.
     */
    midi_stream_source_impl::~midi_stream_source_impl()
    {
    }


    int midi_stream_source_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      unsigned char *out = (unsigned char *) output_items[0];
      
      for(int i = 0; i < noutput_items; i++){
		
		//better a FSM instead
		switch(d_currentState) {
		  case ST_IDLE:
		    //check the midi Queue if the queue is empty out bit 1
			d_stamp = d_midiIn->getMessage( &d_message );
			d_vec_limit = d_message.size();
			//change to start
			if(d_vec_limit > 0){
			  d_currentState = ST_START;
			}
		    out[i] = 0x01;
		    break;
		  case ST_START:
			//send bit 0 start signal
			d_position = 0;
			d_count = 7;
			d_currentState = ST_SEND;
			out[i] = 0x00;
		    break;
      	  case ST_SEND:
			//reads bits of message then check the position on the message and the position on the byte
			out[i] = ((d_message[d_position]>>d_count--) & 0x01);
			//std::cout << " " << (int)out[i];
			if (d_count < 0){
		  	  //std::cout << " " << (int)d_message[d_position] << std::endl;
		  	  d_position++;
		  	  d_count = 7;
			}
			//if the message is been readed change state
			if(d_position >= d_vec_limit){
			  d_currentState = ST_IDLE;
			}
		    break;
		}
	  }
      // Tell runtime system how many output items we produced.        
      consume_each (noutput_items);
      return noutput_items;
    }

  } /* namespace midi */
} /* namespace gr */

