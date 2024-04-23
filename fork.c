 #include<stdio.h>
 #include<unistd.h>
 #include<stdlib.h>
 int main()
 {
 printf("Parent PID : %d, My parent : %d\n",getpid(),getppid());
 system("ps -l");
 fork();
 system("ps -l");
 printf("Parent PID : %d, My parent : %d\n",getpid(),getppid());
 
 }
