%include 'in_out.asm'

SECTION .data

msg: DB 'Введите значение x: ',0
rem: DB 'Результат ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, msg
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x 
call atoi 

mov ebx,11 
add eax, ebx 
mov edx,2 
mul edx
sub eax,6

mov edi,eax 

mov eax,rem 
call sprint 
mov eax,edi
call iprintLF 

call quit 
