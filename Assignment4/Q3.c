#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
	printf("The pid of parent is : %d(before creating a child process)\n",getpid());
	char str_p[30],str_c[3],te;
	int p1[2],p2[2];
	pipe(p1);
	pipe(p2);
	while(1)
	{
		pid_t pid=fork();
		if(pid==0)
		{
			//printf("Inside child process.Pid : %d\n",getpid());
			close(p1[1]);
			close(p2[0]);

			read(p1[0],str_p,30);
			printf("From Child : %s\n",str_p);
			if(strcmp(str_p,"exit")==0)
			{
				strcpy(str_c,"ext");
			}
			else{
			int l=strlen(str_p);
			int i=0,j=l-1,flag=0;
			while(i<j)
			{
				if(str_p[i]==str_p[j])
				{
					i++;
					j--;
				}
				else
				{
					flag=1;
					break;
				}
			}
			if(flag==1)
				strcpy(str_c,"no");
			else
				strcpy(str_c,"yes");

			}
			write(p2[1],str_c,3);
		}
		else
		{//parent process
			printf("Enter a string : ");
			scanf("%[^\n]%c",str_p,&te);
			//printf("%s",str_p);
			write(p1[1],str_p,30);
			read(p2[0],str_c,3);
			if(strcmp(str_c,"ext")==0)
				exit(0);
			printf("%s\n",str_c);
		}
	}
	return 0;
}
