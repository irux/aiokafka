from libc.stdint cimport int64_t, uint32_t


# cdef class DefaultRecordBatch:

#     cdef:
#         Py_buffer _buffer
#         char _magic
#         int _decompressed
#         LegacyRecord _main_record

#     @staticmethod
#     cdef inline LegacyRecordBatch new(
#         bytes buffer, Py_ssize_t pos, Py_ssize_t slice_end, char magic)

#     cdef int _decompress(self, char compression_type) except -1
#     cdef int64_t _read_last_offset(self) except -1
#     cdef inline int _check_bounds(
#             self, Py_ssize_t pos, Py_ssize_t size) except -1
#     cdef LegacyRecord _read_record(self, Py_ssize_t* read_pos)


cdef class DefaultRecord:

    cdef:
        readonly int64_t offset
        int64_t timestamp
        char timestamp_type
        readonly object key
        readonly object value
        readonly object headers

    @staticmethod
    cdef inline DefaultRecord new(
        int64_t offset, int64_t timestamp, char timestamp_type,
        object key, object value, object headers)
