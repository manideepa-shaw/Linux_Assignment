 //C program to create a child process. The parent process must wait untill the child finishes. Both the process must print their own pid and parent pid. Additionally the parent process should print the exit status of the child
 #include<stdio.h>
 #include<unistd.h>
 #include<stdlib.h>
 int main()
 {
	 int cstatus;
	 printf("The pid of parent is : %d(before creating a child process)\n",getpid());
	 int x = fork(); //x will be 0 if it is a children process else it will be >0
	 if(x==0)
	 {
	 
	 	printf("Children Process : %d, my parent id : %d\n",getpid(),getppid());

	 }
	 else
	 {
		  int pid = wait(&cstatus); //this will wait untill the children process gets executed
		  if(pid==x)
		  {
		  	printf("Child %d finished with status %d\n",x,cstatus);
		 	printf("Parent process : %d, my parent id : %d\n",getpid(),getppid());
		  }
	 }
 
 }
 
