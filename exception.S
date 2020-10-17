_start:
    li a0, 0x8
    csrw mstatus, a0
    la a0, _trap
    csrrw x0, 0x305, a0
    nop
    nop
    nop
    nop
    ecall
    nop
    nop
    li a1, 4
    bne a0, a1, bad

good:
    j good
    nop
    nop
    nop
bad:
    j bad
    nop
    nop
    nop
_trap:
    nop
    nop
    nop
    li a0, 1
    addi a0, a0, 3
    csrr a2, mepc
    addi a2, a2, 4
    csrw mepc, a2
    mret
    nop
    nop

