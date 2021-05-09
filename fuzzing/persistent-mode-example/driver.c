#include <unistd.h>
#include <string.h>
#include <stdio.h>

#include "library.h"

// fixed size buffer based on assumptions about the maximum size that is likely necessary to exercise all aspects of the target function
#define SIZE 100

__AFL_FUZZ_INIT();

int main(int argc, char *argv[])
{

#ifdef __AFL_HAVE_MANUAL_CONTROL
	__AFL_INIT();
#endif

	unsigned char *buf = __AFL_FUZZ_TESTCASE_BUF; // must be after __AFL_INIT
												  // and before __AFL_LOOP!

	if ((argc == 2) && strcmp(argv[1], "echo") == 0)
	{

		while (__AFL_LOOP(10000))
		{
			int len = __AFL_FUZZ_TESTCASE_LEN; // don't use the macro directly in a
											   // call!
			if (len < 0)
				continue;

			lib_echo(buf, len);
		}
	}
	else if ((argc == 2) && strcmp(argv[1], "mul") == 0)
	{
		while (__AFL_LOOP(10000))
		{
			int len = __AFL_FUZZ_TESTCASE_LEN; // don't use the macro directly in a
											   // call!
			if (len < 8)
				continue;

			int a = *((int*)buf);
			int b = *((int*)(buf + 4));
			printf("%d\n", lib_mul(a, b));
		}
	}
	else
	{
		printf("Usage: %s mul|echo\n", argv[0]);
	}

	return 0;
}