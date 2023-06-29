/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zhlim <zhlim@student.42kl.edu.my>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/29 16:17:54 by zhlim             #+#    #+#             */
/*   Updated: 2023/06/29 16:56:22 by zhlim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./includes/minitalk.h"

void	send_signal(int pid, char c)
{
	int	bit;

	while (bit < 8)
	{
		if (c & 1 << bit != 0)
		{
			kill(pid, SIGUSR1);
		}
		bit++;
	}
}

int	main(int ac, char **av)
{
	int	pid;
	int	i;

	if (ac == 3)
	{
		i = 0;
		pid = *av[1];
		ft_printf("PID is: %d\n", pid);
		while (av[2][i])
		{
			send_signal(pid, av[2][i]);
			i++;
		}
	}
	else
	{
		ft_printf("Wrong number of arguments\n");
		return (0);
	}
}
