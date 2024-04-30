#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
printf("The pid of parent is : %d(before creating a child process)\n",getpid());
char str[30],te;
printf("Enter a string : ");
scanf("%[^\n]%c",str,&te);
pid_t pid=fork();
if(pid==0)
{
printf("Inside child process.Pid : %d\n",getpid());
printf("%s\n",str);

}
//printf("%d \n",pid);
return 0;
}
