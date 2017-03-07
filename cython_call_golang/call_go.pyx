cdef extern from "call_by_c.h":
  long long int Add(long long int a, long long int b)

def add(a,b):
  return Add(a,b)
