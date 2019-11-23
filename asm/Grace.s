%define A
%define B
%macro C 0
section .data
s db"%%define A%1$c%%define B%1$c%%macro C 0%1$csection .data%1$cs db%2$c%3$s%2$c,0%1$cn db%2$cGrace_kid.s%2$c,0%1$cm db%2$cw%2$c,0%1$csection .text%1$cglobal _main%1$cextern _fprintf%1$cextern _fopen%1$c_main:push rbp%1$clea rdi,[rel n]%1$clea rsi,[rel m]%1$ccall _fopen%1$cmov rdi,rax%1$clea rsi,[rel s]%1$cmov rdx,10%1$cmov rcx,34%1$clea r8,[rel s]%1$ccall _fprintf%1$cpop rbp%1$cmov rax,0%1$cret%1$c%%endmacro%1$cC%1$c",0
n db"Grace_kid.s",0
m db"w",0
section .text
global _main
extern _fprintf
extern _fopen
_main:push rbp
lea rdi,[rel n]
lea rsi,[rel m]
call _fopen
mov rdi,rax
lea rsi,[rel s]
mov rdx,10
mov rcx,34
lea r8,[rel s]
call _fprintf
pop rbp
mov rax,0
ret
%endmacro
C
