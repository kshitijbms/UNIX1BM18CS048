/*Write a C program to emulate the ls command using stat and lstat API functions .Print File type, permission etc all the attributes. */
#include<unistd.h>
#include<stdio.h>
#include<sys/stat.h>
#include<stdlib.h>
#include <sys/types.h>

int main(int argc,char *argv[])
{
	struct stat statbuff;
	if(lstat(argv[1], &statbuff) == -1)
	{
		printf("Couldn't List Attributes of File");
		exit(0);
	}
	printf("File : %s\n", argv[1]);
	printf("Inode Number : %ld\n",  statbuff.st_ino);
	printf("UID : %d\n", statbuff.st_uid);
	printf("GID : %d\n", statbuff.st_gid);
	printf("Type and Permission : %o\n", statbuff.st_mode);
	printf("Number of Links : %ld\n", statbuff.st_nlink);
	printf("Size in Bytes : %ld\n", statbuff.st_size);
	printf("Blocks allocated : %ld\n", statbuff.st_blocks);
	exit(0);
}