update: @p1_board->o, @p2_guess->r1 , x->r2,y->r3

ldr r0,[r0]
sub r2r2,#1
mul r2,r2,#32
sub r3,r3,#1
mul r3,r3,#4

add r2,r2,r3ldr r3,[r0,r2]
movs r3,r3
mov r5,#1
str r5,[r1,r2]
bne hit

mov r5,#-1
str r5,[r1,r2]

hit:
bx lr

