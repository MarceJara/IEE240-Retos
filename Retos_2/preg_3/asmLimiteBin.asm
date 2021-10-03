global asmLimiteBin  
section .text
asmLimiteBin:
    xorpd xmm0,xmm0
    xorpd xmm1,xmm1
    xorpd xmm3,xmm3
    xor r8,r8
    xor r12,r12
    xor r13,r13
    mov r12, rdi
    mov r13, r12
    mov r8, 1
    cvtsi2sd xmm3,r8
    cvtsi2sd xmm0, rdi
    
base:
    movsd xmm1, xmm3
    divsd xmm1, xmm0
    addsd xmm1, xmm3 ; base en xmm1
    
    ;movsd xmm0,xmm1
    ;jmp done
    
binExp:             ;while
    cmp r12,0       ;     (b > 0){
    jbe next1        ;
    and r13,01H     ;if(b & 1){
    cmp r13,01H     ;
    jne next2       ;
    mulsd xmm3,xmm1 ; res = res * a}
    next2:          ;
    mulsd xmm1,xmm1 ; a = a * a
    shr r12,1       ; b >>=1}
    mov r13,r12
    jmp binExp      ;
next1:    
    movsd xmm0,xmm3 ;return res
done:
    ret 
