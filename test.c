#include "string.h"
#include "stdlib.h"
#include "stdio.h"

int	main(void)
{
	size_t	returned;
	size_t	expected;

	returned = my_strlen("999999999");
	expected = 9;
	if (returned != expected)
	{
		printf("returned: %ld\n", returned);
		printf("expected: %ld\n", expected);
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}
