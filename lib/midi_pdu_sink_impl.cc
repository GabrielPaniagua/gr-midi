/* -*- c++ -*- */
/* 
 * Copyright 2019 Gabriel Paniagua.
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
#include "midi_pdu_sink_impl.h"

namespace gr {
	namespace midi {
		
		midi_pdu_sink::sptr
		midi_pdu_sink::make(
		 std::string name_conexion,
		 std::string name_port
		){
			return gnuradio::get_initial_sptr(
			 new midi_pdu_sink_impl(
			  name_conexion,
			  name_port
			 )
			);
		}
		
		/*
		 * callback_midi_source_pdu:
		 * It's a callback to obtain the PDU message.
		 * It gets the PDU message with the MIDI data inside 
		 * with the Deltatime and a PDU object
		 * packs the MIDI data inside the PDU object and
		 * sends it through the PDU port.
		 */
		void midi_pdu_sink_impl::callback_midi_sink_pdu(pmt::pmt_t pdu){
			pmt::pmt_t meta = pmt::car(pdu);
			pmt::pmt_t vector = pmt::cdr(pdu);
			size_t len = pmt::blob_length(vector);
			size_t offset(0);
			const uint8_t* d = (const uint8_t*) pmt::uniform_vector_elements(vector, offset);
			std::vector<unsigned char> message;
			for(size_t i=0; i<len; i++){
				message.push_back(d[i]);
			}
			d_midiOut->sendMessage( &message );
		}

		/*
		 * The private constructor
		 */
		midi_pdu_sink_impl::midi_pdu_sink_impl(
		 const std::string name_conexion,
		 const std::string name_port
		): gr::block(
		 "midi_pdu_sink",
		 gr::io_signature::make(0,0,0),
		 gr::io_signature::make(0,0,0)
		){
			// Port MIDI OUT initalization
			try {
				d_midiOut = new RtMidiOut(RtMidi::Api::UNSPECIFIED, name_conexion);
			}catch ( RtMidiError &error ) {
				error.printMessage();
			}
			try {
				d_midiOut->openVirtualPort(name_port);
			}catch ( RtMidiError &error ) {
				error.printMessage();
			}
			
			message_port_register_in(pmt::mp("midiIn"));
			set_msg_handler(
			 pmt::mp("midiIn"),
			 boost::bind(&midi_pdu_sink_impl::callback_midi_sink_pdu, this, _1)
			);
		}
		
		/*
		 * Our virtual destructor.
		 */
		midi_pdu_sink_impl::~midi_pdu_sink_impl(){
			delete d_midiOut;
		}


		// The forecast and general work must be inplemented
		// but they are unnused.
		void midi_pdu_sink_impl::forecast(
		 int noutput_items,
		 gr_vector_int &ninput_items_required
		){}
		
		int midi_pdu_sink_impl::general_work(
		 int noutput_items,
		 gr_vector_int &ninput_items,
		 gr_vector_const_void_star &input_items,
		 gr_vector_void_star &output_items
		){
			consume_each (noutput_items);
			return noutput_items;
		}
		
	} /* namespace midi */
} /* namespace gr */
