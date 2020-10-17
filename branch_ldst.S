start:
    beq zero, zero, hmmm
    addi x1, zero, 100
    nop
    nop
hmmm:
    sw x1, 0(zero)
    lw x2, 0(zero)
    addi x1, zero, 0xf
    csrw mepc, zero
    csrw mepc, x1
    csrsi mepc, 0x10
    csrr x1, mepc
