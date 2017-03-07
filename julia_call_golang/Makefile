libcall_by_c.so: call_by_c.go
	go build -buildmode=c-shared -o $@ $^
	julia call_go.jl
.PHONY: clean
clean:
	rm libcall_by_c.*
