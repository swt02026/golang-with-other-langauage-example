cdef extern from "call_by_c.h":
  long long int Add(long long int a, long long int b)

def add_from_go(a,b):
  return Add(a,b)
