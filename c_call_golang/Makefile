PWD := $(shell pwd)

call_go: libcall_by_c.so call_go.c
	gcc -L. -o $@ $^ -lcall_by_c
	LD_LIBRARY_PATH=$(PWD) ./$@

lib%.so: %.go
	go build -buildmode=c-shared -o $@ $^

.PHONY: clean
clean:
	rm *.so call_go *.h
