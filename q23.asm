;prog to add content of portA and PortB
;show its result in port c
;use i/o mode of 8255
lxi sp,100
mvi a,92h
out 83h
in 80
mov b,a
in 81
add b
out 82
hlt
delay: lxi h,18
l1: dcx h
mov a,l
ora h
jnz l1
ret
 
