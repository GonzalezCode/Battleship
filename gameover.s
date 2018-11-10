gameover: @ p1_guess-> r0 , size->r1
@initialization

mul r1,r1,r1 @ r1 = size*size
mov r2,#0 @r2=0-count# of
ldr r0,[r0]
mov r3,#0

loop:
ldr r4,[r0,r3]
subs r4,r4,#1
bne nothit 

add r2,r2,#1


nothit: 
subs r3,r3,#4
subs r1,r1,#1


bne loop
mov r0,#0
subs r2,r2,#17
bne notover
mov r0,#1

notover: 
bx lr
