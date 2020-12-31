/*Write a C Program to create a new process using Fork  operation.Print the Process ID of the  child and its parent  in the child process and print the process Id of parent,child Pid and parent’s parent process Id in Parent.Make the parent to sleep for 3 seconds.*/
#include<unistd.h>
#include<stdio.h>
#include<sys/wait.h>
#include<stdlib.h>
#include<fcntl.h>

int main()
{
	int res;
	res=fork();
	if (res == 0)
	{
		printf("This is Child process with process Id : %d\n",getpid());
		printf("Child's parent process Id is :  %d\n\n\n",getppid());
	}
	else
	{
		sleep(3);
		printf("This is Parent process with process Id : %d\n",getpid());
		printf("Parent's parent process Id is :  %d\n",getppid());
		printf("Return value of fork to parent is child's pID: %d\n",res);
	}
	return 0;
}