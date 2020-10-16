BITS 32

%include 'training.s'

global main
extern exit

section .text


main:
    call read_hex
    inc eax
    dec eax
    jz z0
    mov eax,1
    call print_eax
    jmp end
    z0:
    mov eax,0
    call print_eax
    end:

    push 0
    call exit