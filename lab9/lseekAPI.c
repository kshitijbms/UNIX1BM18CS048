/*Perform reverse reading of a file by using lseek API. Pass the File parameter as a command Line argument.*/

#include<unistd.h>
#include<fcntl.h>
#include<stdlib.h>
#include<sys/stat.h>
#include<stdio.h>
int main(int argc, char *argv[])
{
	char buff;
	int fd,size;
	fd = open(argv[1],O_RDONLY);
	size = lseek(fd,-1,SEEK_END);
	while( size-- >=0)
	{
		read(fd,&buff,1);
		write(STDOUT_FILENO,&buff,1);
		lseek(fd,-2,SEEK_CUR);
	}
	return 0;
}