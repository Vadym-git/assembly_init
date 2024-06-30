.global _start

.text
_start:
    mov x0, #4
    mov x1, #5
    cmp x0, x1 // r0-r1
    blt cond2

cond1:
    mov x2, #1

cond2:
    mov x3, #2
