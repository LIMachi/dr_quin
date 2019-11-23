%if 0
int main(){
char n[80];
snprintf(n,80,"./Sully_%d.c",i);
if(!access(n,F_OK))--i;
if(i<0)return 0;
snprintf(n,80,"./Sully_%d.c",i);
FILE *f=fopen(n,"w");
fprintf(f,"int i=%3$d;%1$c#define C %2$s%1$c#define B(x) #x%1$c#define A(x) B(x)%1$cchar *s = A(C);%1$c#include<stdio.h>%1$c#include<unistd.h>%1$c#include<stdlib.h>%1$cC%1$c",10,s,i);
fclose(f);
snprintf(n,80,"gcc Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d",i);
system(n);}
%endif

section .bss
s resb 80

section .data
c db"test",0
n db"./Sully_%d.s",0
m db"w",0
g db"nasm -f macho64 Sully_%1$d.s -o Sully_%1$d && gcc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d",0

section .text
global _main
extern _snprintf
extern _access
extern _fopen
extern _fprintf
extern _close
extern _system

_main:push rbp

mov r15,5 ;i=5

lea rdi,[rel s]
mov rsi,80
lea rdx,[rel n]
mov rcx,r15
call _snprintf ;snprintf(s,80,n,i)
;rdi should still be s
mov rsi,0;F_OK
call _access;access(s,F_OK)

cmp rax,0;test if the return of access is null
jnz _i;if the cmp returned 0, do not decrement (jump over)
dec r15
_i:cmp r15,0;test if i relative to 0
jle _e;if i was lower than 0, jump to the end of the program

lea rdi,[rel s]
mov rsi,80
lea rdx,[rel n]
mov rcx,r15
call _snprintf ;snprintf(s,80,n,i)

lea rdi,[rel s]
lea rsi,[rel m]
call _fopen
mov r14,rax;r14 = fopen(s,"w")

mov rdi,r14
lea rsi,[rel c]
mov rdx,10
mov rcx,34
mov r8,rsi
mov r9,r15
call _fprintf;frpintf(f, c, 10, 34, c, i)

_e:pop rbp
mov rax,0
ret
