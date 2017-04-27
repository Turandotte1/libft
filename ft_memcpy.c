/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mrychkov <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/24 12:11:09 by mrychkov          #+#    #+#             */
/*   Updated: 2017/04/24 14:31:48 by mrychkov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	char *cdest;
	char *csrc;

	cdest = (char *)dest;
	csrc = (char *)src;
	if (n == 0 || dest == src)
		return (dest);
	while (n--)
		*cdest++ = *csrc++;
	dest = cdest;
	return (dest);
}
