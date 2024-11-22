%include 'in_out.asm'
section .data
msg1 db 'Введите a: ',0h
msg2 db 'Введите x: ',0h
msg3 db 'Результат: ',0h

section .bss
rem resb 10
a resb 10
x resb 10

section .text
global _start
_start:

mov eax,msg1
call sprint

mov ecx,a
mov edx,10
call sread

mov eax,a
call atoi 
mov [a],eax 

mov eax,msg2
call sprint

mov ecx,x
mov edx,10
call sread

mov eax,x
call atoi 
mov [x],eax 

mov eax,[a]
cmp eax, 3
jl  less_1
jge more_2

less_1:
mov eax,[a]
mov ebx,3
mul ebx 
mov edi,eax
jmp end_

more_2:
mov eax,[x]
add eax,1
mov edi,eax

end_:
mov eax,rem 
call sprint 
mov eax,edi 
call iprintLF 

call quit
