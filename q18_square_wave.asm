; Generate square wave with delay of 0.25 sec use ppi 8255 to take output
lxi sp,0040h
mvi a,80h
out 13h
l1: mvi a,255
out 10h
call delay
mvi a,00h
out 10h
call delay
jmp l1
delay: lxi h,7a0fh
k1: dcx h
mov a,l
ora h
jnz k1
ret
