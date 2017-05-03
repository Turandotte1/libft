/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:       :+:    :+:  */
/*                                                    +:+ +:+         +:+     */
/*   By: mrychkov <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/29 20:42:17 by mrychkov          #+#    #+#             */
/*   Updated: 2017/04/29 20:43:02 by mrychkov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

char	*ft_strtrim(char const *s)
{
	unsigned int	i;
	int		start;
	int		end;

	i = 0;
	start = 0;
	end = 0;
	while (s[i] && (ft_isspace(s[i])))
		i++;
	if (i == ft_strlen(s))
		return (ft_strdup("\0"));
	start = i;
	i = ft_strlen(s) - 1;
	while (ft_isspace(s[i]))
		i--;
	end = i;
	return (ft_strsub(s, start, end - start + 1));
}
