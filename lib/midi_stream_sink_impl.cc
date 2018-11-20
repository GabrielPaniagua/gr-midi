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
#include "midi_stream_sink_impl.h"

//status of reception
#define ST_IDLE 1001
#define ST_STATUS 1002
#define ST_DATA 1003

namespace gr {
  namespace midi {

    midi_stream_sink::sptr
    midi_stream_sink::make()
    {
      return gnuradio::get_initial_sptr
        (new midi_stream_sink_impl());
    }

    /*
     * The private constructor
     */
    midi_stream_sink_impl::midi_stream_sink_impl()
      : gr::sync_block("midi_stream_sink",
              gr::io_signature::make(1, 1, sizeof(unsigned char)),
              gr::io_signature::make(0, 0, 0))
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
	  reset();
	  d_currentState = ST_IDLE;
	}

    /*
     * Our virtual destructor.
     */
    midi_stream_sink_impl::~midi_stream_sink_impl()
    {
    }
    
    void midi_stream_sink_impl::reset(){
		d_count = 7;
		d_position = 0;
		d_byte = 0x00;
	}
	
    int midi_stream_sink_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      const unsigned char *in = (const unsigned char *) input_items[0];
      
      for(int i = 0; i < noutput_items; i++){
      
		if((int)in[i] > 1) {
		  std::cout << "Error midi stream sink: input must be a bit" << std::endl;
		  reset();
		  d_currentState = ST_IDLE;
		}
      
		//better a FSM instead
		switch(d_currentState) {
		  case ST_IDLE:
			//wait for a start bit
			if ((int)in[i] == 0){
			  reset();
			  d_currentState = ST_STATUS;
			}
			break;
		  case ST_STATUS:
			//catch the first byte, a status byte
			d_byte |= ((int)in[i] << d_count--); //puts the bit in the auxiliar byte
			if(d_count<0){ //check if finish reading byte
			  //std::cout << "status byte: " << (int)d_byte << std::endl;
			  d_message = {d_byte};
			  if((int)d_message[0] < 128) { //check if the byte is a status byte, starts first bit 1
				std::cout << "Error midi stream sink: data byte received before status byte" << std::endl;
				reset();
				d_currentState = ST_IDLE;
		      }else{
				d_count = 7;
				d_byte = 0x00; 	
				d_position++;
				d_currentState = ST_DATA;
			  }
		    }
			break;
		  case ST_DATA:
			//catch the rest of status bytes
			if((d_count >= 7) & ((int)in[i] == 1)){  //check if the data byte starts bit 0, if not change state
			  d_midiOut->sendMessage( &d_message );
			  reset();
			  d_currentState = ST_IDLE; 
			  for( int j=0; j<d_message.size(); j++) std::cout << std::endl << (int)d_message[j] << std::endl;
		    }else{
			  d_byte |= ((int)in[i] << d_count--); //puts the bit in the auxiliar byte
			  if (d_count<0){
			    //std::cout << "data byte: " << (int)d_byte << std::endl;
			    d_message.push_back(d_byte);			  
			    d_count = 7;
			    d_byte = 0x00;
			    d_position++;
		      }
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

