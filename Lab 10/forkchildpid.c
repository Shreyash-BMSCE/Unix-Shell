//1.Write a C Program to create a new process using Fork  operation   
//.Print the Process ID of the  child and its parent  in the child process 
//and print the process Id of parent,child Pid and parent’s parent process Id 
//in Parent.Make the parent to sleep for 3 seconds.

#include<stdio.h>
#include<sys/types.h>
#include<stdlib.h>
#include<unistd.h>

int main(void)
{
	int pid;
	printf("Before fork \n");
	pid = fork();
	if (pid>3)
	{
		sleep(3);
		printf("Parent - PID: %d PPID: %d ChildPID: %d 			\n",getpid(),getppid(),pid);
	}
	else if (pid == 0)
	{
		printf("Child -  PID:%d   PPID:%d \n",getpid(),getppid());
	}
	else
	{
		printf("Fork error!!! \n");
		exit(1);
	}
	printf("Both process continue \n ");
	exit(0);	
}
