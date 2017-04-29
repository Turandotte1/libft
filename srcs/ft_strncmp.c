#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	while ((*s1++ || *s2++) && (s1* == s2*))
	{
		if ((s1 || s2) == (n - 1))
			return (((unsigned char *)s1 - (unsigned char *)s2));
	}
	return (((unsigned char *)s1 - (unsigned char *)s2));
}