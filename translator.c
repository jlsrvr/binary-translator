#include "libft.h"
#include <stdio.h>

int main(int ac, char **av)
{
	char c;
	char *s;

	if (ac < 2)
	{
		printf("You need to enter something to be translated");
		return (1);
	}
	while (*(av[1]))
	{
		if (ft_isalpha(*(av[1])))
		{
			c = (ft_tolower(*(av[1])) - 96);
			if(!(s = ft_uitoa_base(c, "01")))
				return (0);
			printf("%s-", s);
			free(s);
		}
		else
			printf("%c", *(av[1]));
		av[1]++;
	}
	return (1);
}
