#include <stdio.h>

#include "libcall_by_c.h"

extern long long int add(long long int a, long long int b);

int main(){
	printf("Output is:\n");
	printf("%lld\n", add(2,5));
}
