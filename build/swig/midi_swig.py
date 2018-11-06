# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.12
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

from sys import version_info as _swig_python_version_info
if _swig_python_version_info >= (2, 7, 0):
    def swig_import_helper():
        import importlib
        pkg = __name__.rpartition('.')[0]
        mname = '.'.join((pkg, '_midi_swig')).lstrip('.')
        try:
            return importlib.import_module(mname)
        except ImportError:
            return importlib.import_module('_midi_swig')
    _midi_swig = swig_import_helper()
    del swig_import_helper
elif _swig_python_version_info >= (2, 6, 0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_midi_swig', [dirname(__file__)])
        except ImportError:
            import _midi_swig
            return _midi_swig
        try:
            _mod = imp.load_module('_midi_swig', fp, pathname, description)
        finally:
            if fp is not None:
                fp.close()
        return _mod
    _midi_swig = swig_import_helper()
    del swig_import_helper
else:
    import _midi_swig
del _swig_python_version_info

try:
    _swig_property = property
except NameError:
    pass  # Python < 2.2 doesn't have 'property'.

try:
    import builtins as __builtin__
except ImportError:
    import __builtin__

def _swig_setattr_nondynamic(self, class_type, name, value, static=1):
    if (name == "thisown"):
        return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name, None)
    if method:
        return method(self, value)
    if (not static):
        object.__setattr__(self, name, value)
    else:
        raise AttributeError("You cannot add attributes to %s" % self)


def _swig_setattr(self, class_type, name, value):
    return _swig_setattr_nondynamic(self, class_type, name, value, 0)


def _swig_getattr(self, class_type, name):
    if (name == "thisown"):
        return self.this.own()
    method = class_type.__swig_getmethods__.get(name, None)
    if method:
        return method(self)
    raise AttributeError("'%s' object has no attribute '%s'" % (class_type.__name__, name))


def _swig_repr(self):
    try:
        strthis = "proxy of " + self.this.__repr__()
    except __builtin__.Exception:
        strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)


def _swig_setattr_nondynamic_method(set):
    def set_attr(self, name, value):
        if (name == "thisown"):
            return self.this.own(value)
        if hasattr(self, name) or (name == "this"):
            set(self, name, value)
        else:
            raise AttributeError("You cannot add attributes to %s" % self)
    return set_attr



def high_res_timer_now():
    """high_res_timer_now() -> gr::high_res_timer_type"""
    return _midi_swig.high_res_timer_now()

def high_res_timer_now_perfmon():
    """high_res_timer_now_perfmon() -> gr::high_res_timer_type"""
    return _midi_swig.high_res_timer_now_perfmon()

def high_res_timer_tps():
    """high_res_timer_tps() -> gr::high_res_timer_type"""
    return _midi_swig.high_res_timer_tps()

def high_res_timer_epoch():
    """high_res_timer_epoch() -> gr::high_res_timer_type"""
    return _midi_swig.high_res_timer_epoch()
class midi_source(object):
    """Proxy of C++ gr::midi::midi_source class."""

    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')

    def __init__(self, *args, **kwargs):
        raise AttributeError("No constructor defined")
    __repr__ = _swig_repr

    def make():
        """make() -> midi_source_sptr"""
        return _midi_swig.midi_source_make()

    make = staticmethod(make)
    __swig_destroy__ = _midi_swig.delete_midi_source
    __del__ = lambda self: None
midi_source_swigregister = _midi_swig.midi_source_swigregister
midi_source_swigregister(midi_source)

def midi_source_make():
    """midi_source_make() -> midi_source_sptr"""
    return _midi_swig.midi_source_make()

class midi_source_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::midi::midi_source)> class."""

    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr

    def __init__(self, *args):
        """
        __init__(boost::shared_ptr<(gr::midi::midi_source)> self) -> midi_source_sptr
        __init__(boost::shared_ptr<(gr::midi::midi_source)> self, midi_source p) -> midi_source_sptr
        """
        this = _midi_swig.new_midi_source_sptr(*args)
        try:
            self.this.append(this)
        except __builtin__.Exception:
            self.this = this

    def __deref__(self):
        """__deref__(midi_source_sptr self) -> midi_source"""
        return _midi_swig.midi_source_sptr___deref__(self)

    __swig_destroy__ = _midi_swig.delete_midi_source_sptr
    __del__ = lambda self: None

    def make(self):
        """make(midi_source_sptr self) -> midi_source_sptr"""
        return _midi_swig.midi_source_sptr_make(self)


    def history(self):
        """history(midi_source_sptr self) -> unsigned int"""
        return _midi_swig.midi_source_sptr_history(self)


    def declare_sample_delay(self, *args):
        """
        declare_sample_delay(midi_source_sptr self, int which, int delay)
        declare_sample_delay(midi_source_sptr self, unsigned int delay)
        """
        return _midi_swig.midi_source_sptr_declare_sample_delay(self, *args)


    def sample_delay(self, which):
        """sample_delay(midi_source_sptr self, int which) -> unsigned int"""
        return _midi_swig.midi_source_sptr_sample_delay(self, which)


    def output_multiple(self):
        """output_multiple(midi_source_sptr self) -> int"""
        return _midi_swig.midi_source_sptr_output_multiple(self)


    def relative_rate(self):
        """relative_rate(midi_source_sptr self) -> double"""
        return _midi_swig.midi_source_sptr_relative_rate(self)


    def start(self):
        """start(midi_source_sptr self) -> bool"""
        return _midi_swig.midi_source_sptr_start(self)


    def stop(self):
        """stop(midi_source_sptr self) -> bool"""
        return _midi_swig.midi_source_sptr_stop(self)


    def nitems_read(self, which_input):
        """nitems_read(midi_source_sptr self, unsigned int which_input) -> uint64_t"""
        return _midi_swig.midi_source_sptr_nitems_read(self, which_input)


    def nitems_written(self, which_output):
        """nitems_written(midi_source_sptr self, unsigned int which_output) -> uint64_t"""
        return _midi_swig.midi_source_sptr_nitems_written(self, which_output)


    def max_noutput_items(self):
        """max_noutput_items(midi_source_sptr self) -> int"""
        return _midi_swig.midi_source_sptr_max_noutput_items(self)


    def set_max_noutput_items(self, m):
        """set_max_noutput_items(midi_source_sptr self, int m)"""
        return _midi_swig.midi_source_sptr_set_max_noutput_items(self, m)


    def unset_max_noutput_items(self):
        """unset_max_noutput_items(midi_source_sptr self)"""
        return _midi_swig.midi_source_sptr_unset_max_noutput_items(self)


    def is_set_max_noutput_items(self):
        """is_set_max_noutput_items(midi_source_sptr self) -> bool"""
        return _midi_swig.midi_source_sptr_is_set_max_noutput_items(self)


    def set_min_noutput_items(self, m):
        """set_min_noutput_items(midi_source_sptr self, int m)"""
        return _midi_swig.midi_source_sptr_set_min_noutput_items(self, m)


    def min_noutput_items(self):
        """min_noutput_items(midi_source_sptr self) -> int"""
        return _midi_swig.midi_source_sptr_min_noutput_items(self)


    def max_output_buffer(self, i):
        """max_output_buffer(midi_source_sptr self, int i) -> long"""
        return _midi_swig.midi_source_sptr_max_output_buffer(self, i)


    def set_max_output_buffer(self, *args):
        """
        set_max_output_buffer(midi_source_sptr self, long max_output_buffer)
        set_max_output_buffer(midi_source_sptr self, int port, long max_output_buffer)
        """
        return _midi_swig.midi_source_sptr_set_max_output_buffer(self, *args)


    def min_output_buffer(self, i):
        """min_output_buffer(midi_source_sptr self, int i) -> long"""
        return _midi_swig.midi_source_sptr_min_output_buffer(self, i)


    def set_min_output_buffer(self, *args):
        """
        set_min_output_buffer(midi_source_sptr self, long min_output_buffer)
        set_min_output_buffer(midi_source_sptr self, int port, long min_output_buffer)
        """
        return _midi_swig.midi_source_sptr_set_min_output_buffer(self, *args)


    def pc_noutput_items(self):
        """pc_noutput_items(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_noutput_items(self)


    def pc_noutput_items_avg(self):
        """pc_noutput_items_avg(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_noutput_items_avg(self)


    def pc_noutput_items_var(self):
        """pc_noutput_items_var(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_noutput_items_var(self)


    def pc_nproduced(self):
        """pc_nproduced(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_nproduced(self)


    def pc_nproduced_avg(self):
        """pc_nproduced_avg(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_nproduced_avg(self)


    def pc_nproduced_var(self):
        """pc_nproduced_var(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_nproduced_var(self)


    def pc_input_buffers_full(self, *args):
        """
        pc_input_buffers_full(midi_source_sptr self, int which) -> float
        pc_input_buffers_full(midi_source_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_source_sptr_pc_input_buffers_full(self, *args)


    def pc_input_buffers_full_avg(self, *args):
        """
        pc_input_buffers_full_avg(midi_source_sptr self, int which) -> float
        pc_input_buffers_full_avg(midi_source_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_source_sptr_pc_input_buffers_full_avg(self, *args)


    def pc_input_buffers_full_var(self, *args):
        """
        pc_input_buffers_full_var(midi_source_sptr self, int which) -> float
        pc_input_buffers_full_var(midi_source_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_source_sptr_pc_input_buffers_full_var(self, *args)


    def pc_output_buffers_full(self, *args):
        """
        pc_output_buffers_full(midi_source_sptr self, int which) -> float
        pc_output_buffers_full(midi_source_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_source_sptr_pc_output_buffers_full(self, *args)


    def pc_output_buffers_full_avg(self, *args):
        """
        pc_output_buffers_full_avg(midi_source_sptr self, int which) -> float
        pc_output_buffers_full_avg(midi_source_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_source_sptr_pc_output_buffers_full_avg(self, *args)


    def pc_output_buffers_full_var(self, *args):
        """
        pc_output_buffers_full_var(midi_source_sptr self, int which) -> float
        pc_output_buffers_full_var(midi_source_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_source_sptr_pc_output_buffers_full_var(self, *args)


    def pc_work_time(self):
        """pc_work_time(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_work_time(self)


    def pc_work_time_avg(self):
        """pc_work_time_avg(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_work_time_avg(self)


    def pc_work_time_var(self):
        """pc_work_time_var(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_work_time_var(self)


    def pc_work_time_total(self):
        """pc_work_time_total(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_work_time_total(self)


    def pc_throughput_avg(self):
        """pc_throughput_avg(midi_source_sptr self) -> float"""
        return _midi_swig.midi_source_sptr_pc_throughput_avg(self)


    def set_processor_affinity(self, mask):
        """set_processor_affinity(midi_source_sptr self, std::vector< int,std::allocator< int > > const & mask)"""
        return _midi_swig.midi_source_sptr_set_processor_affinity(self, mask)


    def unset_processor_affinity(self):
        """unset_processor_affinity(midi_source_sptr self)"""
        return _midi_swig.midi_source_sptr_unset_processor_affinity(self)


    def processor_affinity(self):
        """processor_affinity(midi_source_sptr self) -> std::vector< int,std::allocator< int > >"""
        return _midi_swig.midi_source_sptr_processor_affinity(self)


    def active_thread_priority(self):
        """active_thread_priority(midi_source_sptr self) -> int"""
        return _midi_swig.midi_source_sptr_active_thread_priority(self)


    def thread_priority(self):
        """thread_priority(midi_source_sptr self) -> int"""
        return _midi_swig.midi_source_sptr_thread_priority(self)


    def set_thread_priority(self, priority):
        """set_thread_priority(midi_source_sptr self, int priority) -> int"""
        return _midi_swig.midi_source_sptr_set_thread_priority(self, priority)


    def name(self):
        """name(midi_source_sptr self) -> std::string"""
        return _midi_swig.midi_source_sptr_name(self)


    def symbol_name(self):
        """symbol_name(midi_source_sptr self) -> std::string"""
        return _midi_swig.midi_source_sptr_symbol_name(self)


    def input_signature(self):
        """input_signature(midi_source_sptr self) -> io_signature_sptr"""
        return _midi_swig.midi_source_sptr_input_signature(self)


    def output_signature(self):
        """output_signature(midi_source_sptr self) -> io_signature_sptr"""
        return _midi_swig.midi_source_sptr_output_signature(self)


    def unique_id(self):
        """unique_id(midi_source_sptr self) -> long"""
        return _midi_swig.midi_source_sptr_unique_id(self)


    def to_basic_block(self):
        """to_basic_block(midi_source_sptr self) -> basic_block_sptr"""
        return _midi_swig.midi_source_sptr_to_basic_block(self)


    def check_topology(self, ninputs, noutputs):
        """check_topology(midi_source_sptr self, int ninputs, int noutputs) -> bool"""
        return _midi_swig.midi_source_sptr_check_topology(self, ninputs, noutputs)


    def alias(self):
        """alias(midi_source_sptr self) -> std::string"""
        return _midi_swig.midi_source_sptr_alias(self)


    def set_block_alias(self, name):
        """set_block_alias(midi_source_sptr self, std::string name)"""
        return _midi_swig.midi_source_sptr_set_block_alias(self, name)


    def _post(self, which_port, msg):
        """_post(midi_source_sptr self, swig_int_ptr which_port, swig_int_ptr msg)"""
        return _midi_swig.midi_source_sptr__post(self, which_port, msg)


    def message_ports_in(self):
        """message_ports_in(midi_source_sptr self) -> swig_int_ptr"""
        return _midi_swig.midi_source_sptr_message_ports_in(self)


    def message_ports_out(self):
        """message_ports_out(midi_source_sptr self) -> swig_int_ptr"""
        return _midi_swig.midi_source_sptr_message_ports_out(self)


    def message_subscribers(self, which_port):
        """message_subscribers(midi_source_sptr self, swig_int_ptr which_port) -> swig_int_ptr"""
        return _midi_swig.midi_source_sptr_message_subscribers(self, which_port)

midi_source_sptr_swigregister = _midi_swig.midi_source_sptr_swigregister
midi_source_sptr_swigregister(midi_source_sptr)


midi_source_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
midi_source = midi_source.make;

class midi_sink(object):
    """Proxy of C++ gr::midi::midi_sink class."""

    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')

    def __init__(self, *args, **kwargs):
        raise AttributeError("No constructor defined")
    __repr__ = _swig_repr

    def make():
        """make() -> midi_sink_sptr"""
        return _midi_swig.midi_sink_make()

    make = staticmethod(make)
    __swig_destroy__ = _midi_swig.delete_midi_sink
    __del__ = lambda self: None
midi_sink_swigregister = _midi_swig.midi_sink_swigregister
midi_sink_swigregister(midi_sink)

def midi_sink_make():
    """midi_sink_make() -> midi_sink_sptr"""
    return _midi_swig.midi_sink_make()

class midi_sink_sptr(object):
    """Proxy of C++ boost::shared_ptr<(gr::midi::midi_sink)> class."""

    thisown = _swig_property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc='The membership flag')
    __repr__ = _swig_repr

    def __init__(self, *args):
        """
        __init__(boost::shared_ptr<(gr::midi::midi_sink)> self) -> midi_sink_sptr
        __init__(boost::shared_ptr<(gr::midi::midi_sink)> self, midi_sink p) -> midi_sink_sptr
        """
        this = _midi_swig.new_midi_sink_sptr(*args)
        try:
            self.this.append(this)
        except __builtin__.Exception:
            self.this = this

    def __deref__(self):
        """__deref__(midi_sink_sptr self) -> midi_sink"""
        return _midi_swig.midi_sink_sptr___deref__(self)

    __swig_destroy__ = _midi_swig.delete_midi_sink_sptr
    __del__ = lambda self: None

    def make(self):
        """make(midi_sink_sptr self) -> midi_sink_sptr"""
        return _midi_swig.midi_sink_sptr_make(self)


    def history(self):
        """history(midi_sink_sptr self) -> unsigned int"""
        return _midi_swig.midi_sink_sptr_history(self)


    def declare_sample_delay(self, *args):
        """
        declare_sample_delay(midi_sink_sptr self, int which, int delay)
        declare_sample_delay(midi_sink_sptr self, unsigned int delay)
        """
        return _midi_swig.midi_sink_sptr_declare_sample_delay(self, *args)


    def sample_delay(self, which):
        """sample_delay(midi_sink_sptr self, int which) -> unsigned int"""
        return _midi_swig.midi_sink_sptr_sample_delay(self, which)


    def output_multiple(self):
        """output_multiple(midi_sink_sptr self) -> int"""
        return _midi_swig.midi_sink_sptr_output_multiple(self)


    def relative_rate(self):
        """relative_rate(midi_sink_sptr self) -> double"""
        return _midi_swig.midi_sink_sptr_relative_rate(self)


    def start(self):
        """start(midi_sink_sptr self) -> bool"""
        return _midi_swig.midi_sink_sptr_start(self)


    def stop(self):
        """stop(midi_sink_sptr self) -> bool"""
        return _midi_swig.midi_sink_sptr_stop(self)


    def nitems_read(self, which_input):
        """nitems_read(midi_sink_sptr self, unsigned int which_input) -> uint64_t"""
        return _midi_swig.midi_sink_sptr_nitems_read(self, which_input)


    def nitems_written(self, which_output):
        """nitems_written(midi_sink_sptr self, unsigned int which_output) -> uint64_t"""
        return _midi_swig.midi_sink_sptr_nitems_written(self, which_output)


    def max_noutput_items(self):
        """max_noutput_items(midi_sink_sptr self) -> int"""
        return _midi_swig.midi_sink_sptr_max_noutput_items(self)


    def set_max_noutput_items(self, m):
        """set_max_noutput_items(midi_sink_sptr self, int m)"""
        return _midi_swig.midi_sink_sptr_set_max_noutput_items(self, m)


    def unset_max_noutput_items(self):
        """unset_max_noutput_items(midi_sink_sptr self)"""
        return _midi_swig.midi_sink_sptr_unset_max_noutput_items(self)


    def is_set_max_noutput_items(self):
        """is_set_max_noutput_items(midi_sink_sptr self) -> bool"""
        return _midi_swig.midi_sink_sptr_is_set_max_noutput_items(self)


    def set_min_noutput_items(self, m):
        """set_min_noutput_items(midi_sink_sptr self, int m)"""
        return _midi_swig.midi_sink_sptr_set_min_noutput_items(self, m)


    def min_noutput_items(self):
        """min_noutput_items(midi_sink_sptr self) -> int"""
        return _midi_swig.midi_sink_sptr_min_noutput_items(self)


    def max_output_buffer(self, i):
        """max_output_buffer(midi_sink_sptr self, int i) -> long"""
        return _midi_swig.midi_sink_sptr_max_output_buffer(self, i)


    def set_max_output_buffer(self, *args):
        """
        set_max_output_buffer(midi_sink_sptr self, long max_output_buffer)
        set_max_output_buffer(midi_sink_sptr self, int port, long max_output_buffer)
        """
        return _midi_swig.midi_sink_sptr_set_max_output_buffer(self, *args)


    def min_output_buffer(self, i):
        """min_output_buffer(midi_sink_sptr self, int i) -> long"""
        return _midi_swig.midi_sink_sptr_min_output_buffer(self, i)


    def set_min_output_buffer(self, *args):
        """
        set_min_output_buffer(midi_sink_sptr self, long min_output_buffer)
        set_min_output_buffer(midi_sink_sptr self, int port, long min_output_buffer)
        """
        return _midi_swig.midi_sink_sptr_set_min_output_buffer(self, *args)


    def pc_noutput_items(self):
        """pc_noutput_items(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_noutput_items(self)


    def pc_noutput_items_avg(self):
        """pc_noutput_items_avg(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_noutput_items_avg(self)


    def pc_noutput_items_var(self):
        """pc_noutput_items_var(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_noutput_items_var(self)


    def pc_nproduced(self):
        """pc_nproduced(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_nproduced(self)


    def pc_nproduced_avg(self):
        """pc_nproduced_avg(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_nproduced_avg(self)


    def pc_nproduced_var(self):
        """pc_nproduced_var(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_nproduced_var(self)


    def pc_input_buffers_full(self, *args):
        """
        pc_input_buffers_full(midi_sink_sptr self, int which) -> float
        pc_input_buffers_full(midi_sink_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_sink_sptr_pc_input_buffers_full(self, *args)


    def pc_input_buffers_full_avg(self, *args):
        """
        pc_input_buffers_full_avg(midi_sink_sptr self, int which) -> float
        pc_input_buffers_full_avg(midi_sink_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_sink_sptr_pc_input_buffers_full_avg(self, *args)


    def pc_input_buffers_full_var(self, *args):
        """
        pc_input_buffers_full_var(midi_sink_sptr self, int which) -> float
        pc_input_buffers_full_var(midi_sink_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_sink_sptr_pc_input_buffers_full_var(self, *args)


    def pc_output_buffers_full(self, *args):
        """
        pc_output_buffers_full(midi_sink_sptr self, int which) -> float
        pc_output_buffers_full(midi_sink_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_sink_sptr_pc_output_buffers_full(self, *args)


    def pc_output_buffers_full_avg(self, *args):
        """
        pc_output_buffers_full_avg(midi_sink_sptr self, int which) -> float
        pc_output_buffers_full_avg(midi_sink_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_sink_sptr_pc_output_buffers_full_avg(self, *args)


    def pc_output_buffers_full_var(self, *args):
        """
        pc_output_buffers_full_var(midi_sink_sptr self, int which) -> float
        pc_output_buffers_full_var(midi_sink_sptr self) -> pmt_vector_float
        """
        return _midi_swig.midi_sink_sptr_pc_output_buffers_full_var(self, *args)


    def pc_work_time(self):
        """pc_work_time(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_work_time(self)


    def pc_work_time_avg(self):
        """pc_work_time_avg(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_work_time_avg(self)


    def pc_work_time_var(self):
        """pc_work_time_var(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_work_time_var(self)


    def pc_work_time_total(self):
        """pc_work_time_total(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_work_time_total(self)


    def pc_throughput_avg(self):
        """pc_throughput_avg(midi_sink_sptr self) -> float"""
        return _midi_swig.midi_sink_sptr_pc_throughput_avg(self)


    def set_processor_affinity(self, mask):
        """set_processor_affinity(midi_sink_sptr self, std::vector< int,std::allocator< int > > const & mask)"""
        return _midi_swig.midi_sink_sptr_set_processor_affinity(self, mask)


    def unset_processor_affinity(self):
        """unset_processor_affinity(midi_sink_sptr self)"""
        return _midi_swig.midi_sink_sptr_unset_processor_affinity(self)


    def processor_affinity(self):
        """processor_affinity(midi_sink_sptr self) -> std::vector< int,std::allocator< int > >"""
        return _midi_swig.midi_sink_sptr_processor_affinity(self)


    def active_thread_priority(self):
        """active_thread_priority(midi_sink_sptr self) -> int"""
        return _midi_swig.midi_sink_sptr_active_thread_priority(self)


    def thread_priority(self):
        """thread_priority(midi_sink_sptr self) -> int"""
        return _midi_swig.midi_sink_sptr_thread_priority(self)


    def set_thread_priority(self, priority):
        """set_thread_priority(midi_sink_sptr self, int priority) -> int"""
        return _midi_swig.midi_sink_sptr_set_thread_priority(self, priority)


    def name(self):
        """name(midi_sink_sptr self) -> std::string"""
        return _midi_swig.midi_sink_sptr_name(self)


    def symbol_name(self):
        """symbol_name(midi_sink_sptr self) -> std::string"""
        return _midi_swig.midi_sink_sptr_symbol_name(self)


    def input_signature(self):
        """input_signature(midi_sink_sptr self) -> io_signature_sptr"""
        return _midi_swig.midi_sink_sptr_input_signature(self)


    def output_signature(self):
        """output_signature(midi_sink_sptr self) -> io_signature_sptr"""
        return _midi_swig.midi_sink_sptr_output_signature(self)


    def unique_id(self):
        """unique_id(midi_sink_sptr self) -> long"""
        return _midi_swig.midi_sink_sptr_unique_id(self)


    def to_basic_block(self):
        """to_basic_block(midi_sink_sptr self) -> basic_block_sptr"""
        return _midi_swig.midi_sink_sptr_to_basic_block(self)


    def check_topology(self, ninputs, noutputs):
        """check_topology(midi_sink_sptr self, int ninputs, int noutputs) -> bool"""
        return _midi_swig.midi_sink_sptr_check_topology(self, ninputs, noutputs)


    def alias(self):
        """alias(midi_sink_sptr self) -> std::string"""
        return _midi_swig.midi_sink_sptr_alias(self)


    def set_block_alias(self, name):
        """set_block_alias(midi_sink_sptr self, std::string name)"""
        return _midi_swig.midi_sink_sptr_set_block_alias(self, name)


    def _post(self, which_port, msg):
        """_post(midi_sink_sptr self, swig_int_ptr which_port, swig_int_ptr msg)"""
        return _midi_swig.midi_sink_sptr__post(self, which_port, msg)


    def message_ports_in(self):
        """message_ports_in(midi_sink_sptr self) -> swig_int_ptr"""
        return _midi_swig.midi_sink_sptr_message_ports_in(self)


    def message_ports_out(self):
        """message_ports_out(midi_sink_sptr self) -> swig_int_ptr"""
        return _midi_swig.midi_sink_sptr_message_ports_out(self)


    def message_subscribers(self, which_port):
        """message_subscribers(midi_sink_sptr self, swig_int_ptr which_port) -> swig_int_ptr"""
        return _midi_swig.midi_sink_sptr_message_subscribers(self, which_port)

midi_sink_sptr_swigregister = _midi_swig.midi_sink_sptr_swigregister
midi_sink_sptr_swigregister(midi_sink_sptr)


midi_sink_sptr.__repr__ = lambda self: "<gr_block %s (%d)>" % (self.name(), self.unique_id())
midi_sink = midi_sink.make;



