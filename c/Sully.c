int i=5;
#define C int main(){char n[80];snprintf(n,80,"Sully_%d.c",i);if(!access(n,F_OK))--i;if(i<0)return 0;snprintf(n,80,"./Sully_%d.c",i);FILE *f=fopen(n,"w");fprintf(f,"int i=%3$d;%1$c#define C %2$s%1$c#define B(x) #x%1$c#define A(x) B(x)%1$cchar *s = A(C);%1$c#include<stdio.h>%1$c#include<unistd.h>%1$c#include<stdlib.h>%1$cC%1$c",10,s,i);fclose(f);snprintf(n,80,"gcc Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d",i);system(n);}
#define B(x) #x
#define A(x) B(x)
char *s = A(C);
#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
C
