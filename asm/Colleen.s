;comment
section .data
s db"%4$ccomment%1$csection .data%1$cs db%2$c%3$s%2$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c_p:push rbp%1$cmov rbp,rsp%1$clea rdi,[rel s]%1$cmov rsi,10%1$cmov rdx,34%1$clea rcx,[rel s]%1$cmov r8,59%1$ccall _printf%1$cpop rbp%1$cmov rax,0%1$cret%1$c_main:push rbp%1$ccall _p%4$ccomment%1$cpop rbp%1$cret%1$c"
section .text
global _main
extern _printf
_p:push rbp
mov rbp,rsp
lea rdi,[rel s]
mov rsi,10
mov rdx,34
lea rcx,[rel s]
mov r8,59
call _printf
pop rbp
mov rax,0
ret
_main:push rbp
call _p;comment
pop rbp
ret
