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


#ifndef INCLUDED_MIDI_MIDI_PDU_SOURCE_H
#define INCLUDED_MIDI_MIDI_PDU_SOURCE_H

#include <midi/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace midi {

    /*!
     * \brief <+description of block+>
     * \ingroup midi
     *
     */
    class MIDI_API midi_pdu_source : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<midi_pdu_source> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of midi::midi_pdu_source.
       *
       * To avoid accidental use of raw pointers, midi::midi_pdu_source's
       * constructor is in a private implementation
       * class. midi::midi_pdu_source::make is the public interface for
       * creating new instances.
       */
      static sptr make(std::string name_conexion, std::string name_port, bool sysex_check, bool timing_check, bool active_sensing_check);
    };

  } // namespace midi
} // namespace gr

#endif /* INCLUDED_MIDI_MIDI_PDU_SOURCE_H */

