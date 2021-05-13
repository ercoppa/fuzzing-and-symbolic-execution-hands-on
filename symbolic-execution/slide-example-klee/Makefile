all:
	# gcc -o example example.c
	clang -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone example.c

clean:
	rm example.bc 
	rm -rf klee-last
	rm -rf klee-out-*

run:
	klee -emit-all-errors --libc=uclibc --posix-runtime example.bc 1 2

