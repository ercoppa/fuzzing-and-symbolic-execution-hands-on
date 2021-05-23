#include <stdio.h>
#include <stdint.h>
#include <unistd.h>

int foo(int a, int b) {
    if (2 * a < b)
        return a;
    else if (a % b)
        return b;
    else
        return a + b;
}

int main(int argc, char* argv[]) {
    if (argc != 2)
		return 1;

    int input;
    FILE* fp = fopen(argv[1], "r");
	if (!fp) return 1;
	if (fread(&input, 1, sizeof(input), fp) < 0)
	{
		fprintf(stderr, "Couldn't read data from the input file.\n");
	}
	fclose(fp);

    printf("%d\n", foo(input, 7));
    return 0;
}