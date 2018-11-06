INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_MIDI midi)

FIND_PATH(
    MIDI_INCLUDE_DIRS
    NAMES midi/api.h
    HINTS $ENV{MIDI_DIR}/include
        ${PC_MIDI_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    MIDI_LIBRARIES
    NAMES gnuradio-midi
    HINTS $ENV{MIDI_DIR}/lib
        ${PC_MIDI_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MIDI DEFAULT_MSG MIDI_LIBRARIES MIDI_INCLUDE_DIRS)
MARK_AS_ADVANCED(MIDI_LIBRARIES MIDI_INCLUDE_DIRS)

