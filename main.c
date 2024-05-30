#include <stdio.h>
#include <stdlib.h>

int	main(int argc, char **argv)
{
	extern char *ft_strdup();
	char *str = ft_strdup("Bonjour fdp");
	if (str == NULL)
		perror("dsfkalflsa");
	printf("%s\n", str);
	free(str);
	return (0);
}