%include 'in_out.asm'

SECTION .data
msg1: DB 'Введите x: ',0
msg2: DB 'f(x)2x+7: ',0
msg3: DB 'g(x)3x-1',0
result: DB 'f(g(x))=',0

SECTION .bss
x: RESB 80
res: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, msg2
call sprintLF

mov eax, msg3
call sprintLF

mov eax, msg1
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x
call atoi

call _subcalcul

call _calcul

mov eax,result
call sprint
mov eax,[res]
call iprintLF

call quit

_calcul:

mov ebx,2
mul ebx
add eax,7
mov [res],eax

_subcalcul:
mov ebx,3
mul ebx
sub eax,1

ret 
