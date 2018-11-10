@ address of &p1_battlespace->ro
@ address of &p1_guess->r1
@ size->r2

mov r3,r2
mov r4,r2

oloop: @iloop

 

iloop: @jloop

ldr r5,r1

mov r7,r3
sub r7,r7,#1
mul r7,r7, 4
mul r7,r7,-1



ldr r6,[r5,r7]

mov r7,r4
sub r7,r7,#1
mul r7,r7, 4
mul r7,r7,-1

str #0,[r6,r7]


subs r4,r4,#1

bne iloop

subs r3,r3,#1
bne oloop

mov r3,r2
mov r4,r2

oloop2:
mov r4,r2 

iloop2:
ldr r5,[ro]
mov r7,r3
sub r7,r7 1
mul r7,r7, #4
mul r7,r7,-1
ldr r6,[r5,r7]

mov r7,r4
sub r7,r7, 1
mul r7,r7,#4
mul r7,r7, #4
mul r7,r7, -1
str #0,[r6,r7]
subs r4,r4,1
bne iloop2
subs r3,r3 1
bne oloop2
