.align 2
main:           @r0->let,r1->code,r2->hcode,r3->letters
mov r5,#15      @counter/index

loop:
mul r7,r5,4
mul r7,r7,-1
ldr r6,[r3,r7]
subs r6,r0,r6
bne loop
add r5,r5,1
mul r7,r5,-28
add r0,r2,r7
sub r0,r0,4
mov r1,r0
bx lr
