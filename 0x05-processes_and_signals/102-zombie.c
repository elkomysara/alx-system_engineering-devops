#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
* infinite_while - Runs an infinite while loop
* Return: 0 (success)
*/
int infinite_while(void)
{
while (1)
{
sleep(1);
}
return (0);
}

/**
* main - Creates 5 zombie processes
* Return: 0 on success
*/
int main(void)
{
pid_t pid;
int i;

for (i = 0; i < 5; i++)
{
pid = fork();
if (pid == 0)
{
// Child process immediately exits to become a zombie
exit(0);
}
else
{
// Parent process continues and prints the zombie PID
printf("Zombie process created, PID: %d\n", pid);
}
}

// Parent process enters an infinite loop to keep zombies alive
infinite_while();

return (0);
}
