start:
    addi a0, zero, 0
    addi a3, zero, 0x3f
    add a0, a0, a3
    slli a0, a0, 8
    addi a3, zero, 0x2f
    add a0, a0, a3
    slli a0, a0, 8
    addi a3, zero, 0x1f
    add a0, a0, a3
    slli a0, a0, 8
    addi a3, zero, 0x0f
    add a0, a0, a3
    /* a0 -> 0x3f2f1f0f  */
    li a1, 200
    sb a0, 1(a1)
    lb a2, 1(a1)
