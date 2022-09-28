#include "string.h"

size_t	my_strlen(string_t string)
{
	size_t	i;

	i = 0;
	while (string[i] != '\0')
	{
		i += 1;
	}
	return i - 1;
}
