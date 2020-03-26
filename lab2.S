.global lab2
.syntax unified

lab2:
    push {lr}
    mov r0, #1  // a
    mov r1, #2  // b
    mov r2, #3  // c

    // 2^c
    mov r3, #1
    lsl r3, r3, r2

    // (a - b) * 3
    sub r0, r1
    mla r0, r1, #3, r3

    pop {lr}
    