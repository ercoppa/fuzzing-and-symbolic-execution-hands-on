#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

void foobar(int a, int b) {
	int x = 1, y = 0;
	if (a != 0) {
		y = 3+x;
		if (b == 0)
			x = 2*(a+b);
	}
	assert(x-y != 0);
}

int main(int argc, char * argv[]) {
	
	if (argc != 3)
		return 1;

	int a = atoi(argv[1]);
	int b = atoi(argv[2]);
	klee_make_symbolic(&a, sizeof(a), "a");
	klee_make_symbolic(&b, sizeof(b), "b");
	// these are the trivial values that make foobar fail
	// let us see if KLEE can find another set of values
	if (a == 2 && b == 0) return 1;
	foobar(a, b);
	//printf("%d %d\n", a, b);
	return 0;
}
