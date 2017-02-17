PYTHON_INC_DIR = -I/usr/include/python2.7

PYTHON_LIB_DIR = -L/usr/lib/x86_64-linux-gnu

PYTHON_LIB = -lpython2.7

call_go.so: call_by_c.so call_go.c 
	gcc ${PYTHON_INC_DIR} ${PYTHON_LIB_DIR} ${PYTHON_LIB} $^ -shared -fPIC -o $@

%.so: %.go 
	go build -buildmode=c-shared -o $@ $^

%.c: %.pyx 
	cython -a $^ -o $@

.PHONY: clean
clean:
	@rm *.html *.so *.c *.h
