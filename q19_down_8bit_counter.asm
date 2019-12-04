;Down counter(8 led) with delay of 0.25 sec with ppi 8255
lxi sp,0040h
mvi a,80h
out 13h
l1: mvi b,255
l2: mov a,b
out 10h
call delay
dcr b
mov a,b
cpi 00
jnz l2
jmp l1

delay: lxi h,7a0fh
k1: dcx h
mov a,l
ora h
jnz k1
ret