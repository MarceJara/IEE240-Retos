section .data
    var_N dq 145

;section .bss

section .text
    global _start

_start:

    ; Limpiar registros
    xor rax,rax
    xor rbx,rbx
    xor rcx,rcx
    xor rdx,rdx
    xor r9,r9
    xor r10,r10
    xor r11,r11
    xor r12,r12

    ; Guardamos las variables en registros
    mov rax, [rel var_N]  ;rax = var_N = 145
    mov r8, rax  ;r8 = var_N = 145
    mov r9, 0 ;Acumulado de la suma
    mov r12,10

bucle:
    div r12 ; N/10 => rax = 14 & rdx = 5
    mov r11,rax     ; guardamos los sobrantes
    mov rax, rdx 
    mov rcx, rdx
    mov r10, rdx
    dec r10
    cmp rdx,0
    je salto2
    factorial:
        cmp rax,1
        je casoFact1
        mul r10
        ;add r9, rax
        dec r10
        cmp r10,1
        je salto1
        jmp factorial
    
    salto1:
        add r9, rax
        mov rax,r11
        jmp bucle

salto2:
    cmp r8,r9
    je igual
    jne diferente
    igual:
        mov r13,84
        jmp exit

    diferente:
        mov r13,70

exit:
	mov rax, 60		; función para terminar la ejecución del programa. Similar a int 21h
	mov rdi, 0
	syscall

casoFact1:
    add r9,1
    jmp salto2


