PYTHON_HEADER := $(shell python-config --cflags)
PYTHON_LIB := $(shell python-config --ldflags)
PWD := $(shell pwd)

call_go.so: call_by_c.so call_go.c
	gcc $(PYTHON_HEADER) $(PYTHON_LIB) $^ -shared -fPIC -o $@
	LD_PRELOAD=$(PWD)/call_by_c.so python2 call_go_in_python.py

%.so: %.go 
	go build -buildmode=c-shared -o $@ $^

%.c: %.pyx 
	cython -a $^ -o $@

.PHONY: clean
clean:
	@rm *.html *.so *.c *.h *.a
