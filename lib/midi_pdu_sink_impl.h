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

#ifndef INCLUDED_MIDI_MIDI_PDU_SINK_IMPL_H
#define INCLUDED_MIDI_MIDI_PDU_SINK_IMPL_H

#include <midi/midi_pdu_sink.h>
#include "rtmidi/RtMidi.h"

namespace gr {
	namespace midi {
		
		class midi_pdu_sink_impl : public midi_pdu_sink{
			
			private:
			
			// Rtmidi Object to output MIDI messages.
			RtMidiOut *d_midiOut;
			
			// Callback which receives the PDU messages and sends the MIDI message.
			void callback_midi_sink_pdu(pmt::pmt_t pdu);
			
			public:
			
			// Constructor with the custom parameters.
			midi_pdu_sink_impl(
			 std::string name_conexion,
			 std::string name_port
			);
			
			~midi_pdu_sink_impl(); 
			
		};
		
	} // namespace midi
} // namespace gr

#endif /* INCLUDED_MIDI_MIDI_PDU_SINK_IMPL_H */
