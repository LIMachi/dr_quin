section .bss
s resb 80
section .data
c db"section .bss%1$cs resb 80%1$csection .data%1$cc db%2$c%3$s%2$c,0%1$cn db%2$c./Sully_%%d.s%2$c,0%1$cm db%2$cw%2$c,0%1$cg db%2$cnasm -f macho64 Sully_%%1$d.s -o Sully_%%1$d.o && gcc Sully_%%1$d.o -o Sully_%%1$d && ./Sully_%%1$d%2$c,0%1$csection .text%1$cglobal _main%1$cextern _snprintf%1$cextern _access%1$cextern _fopen%1$cextern _fprintf%1$cextern _fclose%1$cextern _system%1$c_main:push rbp%1$cmov r15,%4$d%1$clea rdi,[rel s]%1$cmov rsi,80%1$clea rdx,[rel n]%1$cmov rcx,r15%1$ccall _snprintf%1$clea rdi,[rel s]%1$cmov rsi,0%1$ccall _access%1$ccmp rax,0%1$cjnz _i%1$cdec r15%1$c_i:cmp r15,0%1$cjl _e%1$clea rdi,[rel s]%1$cmov rsi,80%1$clea rdx,[rel n]%1$cmov rcx,r15%1$ccall _snprintf%1$clea rdi,[rel s]%1$clea rsi,[rel m]%1$ccall _fopen%1$cmov r14,rax%1$cmov rdi,r14%1$clea rsi,[rel c]%1$cmov rdx,10%1$cmov rcx,34%1$cmov r8,rsi%1$cmov r9,r15%1$ccall _fprintf%1$cmov rdi,r14%1$ccall _fclose%1$clea rdi,[rel s]%1$cmov rsi,80%1$clea rdx,[rel g]%1$cmov rcx,r15%1$ccall _snprintf%1$clea rdi,[rel s]%1$ccall _system%1$c_e:pop rbp%1$cmov rax,0%1$cret%1$c",0
n db"./Sully_%d.s",0
m db"w",0
g db"nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o && gcc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d",0
section .text
global _main
extern _snprintf
extern _access
extern _fopen
extern _fprintf
extern _fclose
extern _system
_main:push rbp
mov r15,5
lea rdi,[rel s]
mov rsi,80
lea rdx,[rel n]
mov rcx,r15
call _snprintf
lea rdi,[rel s]
mov rsi,0
call _access
cmp rax,0
jnz _i
dec r15
_i:cmp r15,0
jl _e
lea rdi,[rel s]
mov rsi,80
lea rdx,[rel n]
mov rcx,r15
call _snprintf
lea rdi,[rel s]
lea rsi,[rel m]
call _fopen
mov r14,rax
mov rdi,r14
lea rsi,[rel c]
mov rdx,10
mov rcx,34
mov r8,rsi
mov r9,r15
call _fprintf
mov rdi,r14
call _fclose
lea rdi,[rel s]
mov rsi,80
lea rdx,[rel g]
mov rcx,r15
call _snprintf
lea rdi,[rel s]
call _system
_e:pop rbp
mov rax,0
ret
