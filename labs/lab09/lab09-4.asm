%include 'in_out.asm'

SECTION .data
msg1 db "Фунция: f(x)=7+2x",0
msg2 db "Результат: ",0

SECTION .text
global _start

_start:

pop ecx 
pop edx 
sub ecx,1 
mov esi,0
mov eax,msg1
call sprintLF

next:
cmp ecx,0h
jz _end

pop eax
call atoi
call _fxx
add esi,eax
loop next 

_end:

mov eax, msg2
call sprint
mov eax, esi 
call iprintLF 
call quit 

_fxx:
mov ebx,2
mul ebx
add eax,7
ret
