/*Write a C program to create a new process using Fork Operation.Make the parent Processto wait until child process Terminates  .Once the child Terminates collect exit status and prin the exit status of the child in the parent process using WEXITSTATUS macro.*/
#include<unistd.h>
#include<stdio.h>
#include<sys/wait.h>
#include<stdlib.h>
#include<fcntl.h>

int main(int argc, char *argv[])
{
	int fd,exitstatus;
	int exitval=10;
	fd=open(argv[1],O_WRONLY| O_CREAT |O_TRUNC,0664);
	write(fd,"Original Process writes\n",24);
	switch(fork())
	{
		case 0: write(fd,"Child Process writes\n",21);
			close(fd);
			printf("Child : Terminating with exit value %d\n",exitval);
			exit(exitval);
			break;
		
		default: wait(&exitstatus);
			 printf("Parent : Child terminated with exit value %d\n",WEXITSTATUS(exitstatus));
			 write(fd,"Parent Process writes\n",22);
			 exit(20);
		
	}

}