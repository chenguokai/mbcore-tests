_start:
    la a0, trap_entry
    csrw mtvec, a0
    li a1, 1000
    csrw 0x7c2, a1
    csrw 0x7c3, x0
    li a2, 8
    csrw mstatus, a2
    li a3, 0x80
    csrw mie, a3
wait:
    j wait
    nop

trap_entry:
    li a0, 0
    ecall
