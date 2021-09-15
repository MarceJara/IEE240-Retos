section .data

    var_a dq 3
    var_N dq 3

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
    mov rbx, [rel var_a]  ;rbx = var_a = 3
    mov rcx, [rel var_N]  ;rcx = var_N = 3
    mov r12, [rel var_N]  ;r12 = var_N = 3
    mov rax, 1

    ;Termino izquierda
    suma:
        potencia:
            mul rbx
            loop potencia

        add r9,rax
        dec r12
        mov rcx, r12
        mov rax, 1

        cmp r12,0
        je salto1
        jmp suma

    salto1:
    mov r10,r9 ; Guardamos en r10 el resultado del termino izquierdo  

    
    mov rax, 1
    mov rcx, [rel var_N]    ;rcx = var_N = 3
    inc rcx                 ; rcx = N + 1

    ; Termino derecha    
    power:
        mul rbx
        loop power
    
    sub rax,rbx
    dec rbx
    div rbx

    mov r11,rax ; Guardamos en r10 el resultado del termino derecho


exit:
	mov rax, 60		; función para terminar la ejecución del programa. Similar a int 21h
	mov rdi, 0
	syscall