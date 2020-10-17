_start:
    la a0, trap_entry
    csrw mtvec, a0
    /*li a0, 8*/ /* enable exception ? */
    /*
    csrw mstatus, a0
    */
    li a3, 3 /* total test case count */
test1:
    la a0, unaligned
    addi a0, a0, 3
    jalr 0(a0) /* should raise an exception */
    nop
test2:
    la a1, unaligned_store
    lw a2, 3(a1) /* should raise an exception */
    nop
test3:
    la a1, unaligned_store
    li a2, 1
    sw a2, 3(a1) /* should raise an exception */
    nop
    nop


trap_entry:
    csrr t0, mepc
    srli t0, t0, 2
    slli t0, t0, 2 /* Align to int boundary */
    addi t0, t0, 4
    csrw mepc, t0
    addi a4, a4, 1
    beq a3, a4, good_trap
    mret
    nop
    nop
unaligned:
    ret

unaligned_store:
    .word 0x1
    .word 0x2
    .word 0x3
    .word 0x4

good_trap:
    li a0, 0 /* success flag */
    ecall /* here we go */