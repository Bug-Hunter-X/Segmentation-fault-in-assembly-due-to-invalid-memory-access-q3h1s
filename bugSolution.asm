section .data
    myVar dd 10 ; Initialize a variable

section .bss

section .text
    global _start

_start:
    mov ebx, myVar ; Properly initialize ebx to point to valid memory location
    mov eax, [ebx] ; Access the memory location pointed to by ebx
    ; ... rest of the code ...
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80