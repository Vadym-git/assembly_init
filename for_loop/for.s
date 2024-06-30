.global _start
.equ endlist, 0xaaaaaaaa
.text
_start:
    ldr x0, =list
	ldr x3, =endlist
    ldr x1, [x0]
for:
	ldr x1, [x0, #4]!
	cmp x1, x3
	bne for
	beq exit

exit:
	mov x0, #0
    mov x8, #93
    svc #0
.data
list:
    .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
