    global asmVarianza
    section .text
asmVarianza:
    xorpd xmm0,xmm0
    xorpd xmm1,xmm1
    xorpd xmm6,xmm6
    xorpd xmm7,xmm7
    mov r8,0
    mov rcx, rsi
    cvtsi2sd xmm6, rsi
    cmp rsi,0
    je done
mu:
    movsd xmm0, [rdi + r8]
    addsd xmm1,xmm0
    add r8,8
    loop mu
        
    divsd xmm1,xmm6 ;Guardamos en xmm1 el mu
    
    mov rcx, rsi
    mov r8,0
    
varianza:
    movsd xmm0, [rdi + r8]
    subsd xmm0,xmm1
    mulsd xmm0,xmm0
    addsd xmm7,xmm0
    add r8,8
    loop varianza

    divsd xmm7,xmm6
    movsd xmm0, xmm7
done:
    ret 
