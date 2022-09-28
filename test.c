#include "string.h"
#include "stdlib.h"

int	main(void)
{
	size_t	returned;
	size_t	expected;

	returned = my_strlen("999999999");
	expected = 9;
	if (returned != expected)
	{
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}
