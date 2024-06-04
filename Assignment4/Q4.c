#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main()
{
	int status, ch;
	do
	{
		printf("\n1.ls\n2.pwd\n3.uname\n4.exit\n=>");
		scanf("%d",&ch);
		switch(ch)
		{
			case 1:
				if(fork==0)
				{
					printf("\nls : ");
					char *s1[]={"ls",NULL};
					execv("/bin/ls",s1);
				}
				else
				{
					wait(&status);
				}
				break;
			
			case 2:
				if(fork()==0)
				{
					printf("\npwd : ");
					char *s2[]={"/bin/pwd",NULL};
					execv("/bin/pwd",s2);
				}
				else
					wait(&status);
				break;
			
			case 3:
				if(fork()==0)
				{
					printf("\nuname : ");
					char *s3[]={"/bin/uname",NULL};
					execv("/bin/uname",s3);
				}
				else
					wait(&status);
				break;
			
			case 4:
				exit(0);
				break;
				
			default:
				printf("\nIncorrect Choice.");
			break;
		}
	}while(ch!=4);
	return 0;
}
