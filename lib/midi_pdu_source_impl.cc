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
#include "midi_pdu_source_impl.h"

namespace gr {
	namespace midi {

		midi_pdu_source::sptr
		midi_pdu_source::make(
		 const std::string name_conexion,
		 const std::string name_port,
		 bool sysex_check,
		 bool timing_check,
		 bool active_sensing_check
		){
			return gnuradio::get_initial_sptr(
			 new midi_pdu_source_impl(
			  name_conexion,
			  name_port,
			  sysex_check,
			  timing_check,
			  active_sensing_check
			 )
			);
		}

		/*
		 * callback_midi_source_pdu:
		 * It's a callback for the Rtmidi library.
		 * It gets the MIDI data with the Deltatime and a PDU object
		 * packs the MIDI data inside the PDU object and
		 * sends it through the PDU port.
		 */
		void midi_pdu_source_impl::callback_midi_source_pdu(
		 double deltatime,
		 std::vector< unsigned char > *message,
		 void *userData
		){
			unsigned int nBytes = message->size();
			std::vector< unsigned char > &vect = *message;
			midi_pdu_source_impl* this_object = (midi_pdu_source_impl*)userData;
			this_object->message_port_pub(
			 pmt::mp("midiOut"),
			 pmt::cons(pmt::PMT_NIL,
			 pmt::init_u8vector(nBytes, vect))
			);
		}

		/*
		 * The private constructor
		 */
		midi_pdu_source_impl::midi_pdu_source_impl(
		 const std::string name_conexion,
		 const std::string name_port,
		 bool sysex_check,
		 bool timing_check,
		 bool active_sensing_check
		) : gr::block(
		 "midi_pdu_source",
		 gr::io_signature::make(0,0,0),
		 gr::io_signature::make(0,0,0)
		){
			// Port MIDI IN initalization
			try {
				d_midiIn = new RtMidiIn(RtMidi::Api::UNSPECIFIED, name_conexion);
			}catch ( RtMidiError &error ) {
				error.printMessage();
			}
			try {
				d_midiIn->openVirtualPort(name_port);
			}catch ( RtMidiError &error ) {
				error.printMessage();
			}
			
			message_port_register_out(pmt::mp("midiOut"));
			// Callback function wich gets the MIDI messages
			d_midiIn->setCallback( this->callback_midi_source_pdu, (void*)this );			
			// Set ignore behavior: sysex, timing, or active sensing messages.
			d_midiIn->ignoreTypes( !sysex_check, !timing_check, !active_sensing_check );
		}
		 
		/*
		* Our virtual destructor.
		*/
		midi_pdu_source_impl::~midi_pdu_source_impl(){
			delete d_midiIn;
		}
		
		// The forecast and general work must be inplemented
		// but they are unnused.
		void midi_pdu_source_impl::forecast(
		 int noutput_items, 
		 gr_vector_int &ninput_items_required
		){}

		int midi_pdu_source_impl::general_work(
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
