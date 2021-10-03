global asmLimite  
section .text
asmLimite:
    xorpd xmm1,xmm1
    xorpd xmm2,xmm2
    xorpd xmm3,xmm3
    mov r8, 1
    cvtsi2sd xmm3,r8
    cvtsi2sd xmm0, rdi
base:
    movsd xmm1, xmm3
    divsd xmm1, xmm0
    addsd xmm1, xmm3
    mov rcx, rdi
    movsd xmm2,xmm3
power:
    mulsd xmm2,xmm1
    loop power
    movsd xmm0,xmm2
done:
    ret 
