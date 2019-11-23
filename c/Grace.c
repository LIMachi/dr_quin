#include<stdio.h>
#define A(x) int main(){FILE*f=fopen("Grace_kid.c","w");fprintf(f,"#include<stdio.h>\n#define A(x) %s\n#define B(x) #x\n#define C(x) B(x)\nA(C(A(x)))\n",x);}
#define B(x) #x
#define C(x) B(x)
A(C(A(x)))
