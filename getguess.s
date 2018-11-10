.data 
p1: .asciz "enter row:"
p2: .asciz "enter column: \n"
p3: .asciz "%d"

getguess: @x->r0,8y ->r1

mov r2,r0
mov r3,r1

ldr r0, =p1

bl printf

ldr r0,=p3

mov r1,r2

b1 scanf

ldr r0,=p2

b1 printf

ldr r0,=p3

mov r1,r3

b1 scanf

mov lr, r5

bx lr
