.386
.model flat, stdcall
option casemap :none

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
 h db "Hello World!", 13,10,0

.code 
    mov     eax, 0
main:
    add     eax,1   
    push    eax
 invoke StdOut, addr h
    pop     eax
    cmp     eax, 4
    jne     main
end main