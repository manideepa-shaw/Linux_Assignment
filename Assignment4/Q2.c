#include<stdio.h>
#include<unistd.h>
#include<stddef.h>
#include<stdlib.h>
int prime(int num)
{
	if(num<=1)	return 0;
	for(int i=2;i<=num/2;i++)
	{
		if(num%i==0)
			return 0;
	}
	return 1;
}
void range(int start, int end)
{
	for(int i=start;i<=end;i++)
	{
		if(prime(i))
			printf("%d ",i);
	}
}
int main()
{
	int cstatus,start=1,brk=100;
	pid_t pid,cpid;
	for(int i=0;i<10;i++)
	{
		pid=fork();
		if(pid==0)
		{
			printf("Child %d\n",i+1);
			range(start,brk);
			printf("\n");
			exit(0);
		}
		else if(pid<0)
		{
		perror("fork");
		exit(1);
		}
		else{
			start=brk+1;
			brk=brk+100;
		}
	}
	for(int j=0;j<10;j++)
		wait(NULL);
	return 0;
}
