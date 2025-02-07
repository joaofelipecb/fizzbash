#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	int x = strtol(argv[1], NULL, 10);
	int y = strtol(argv[2], NULL, 10);
	int result;

	result = x % y;

	printf("%d\n", result);
	return 0;
}
