;Write a program to set port c7 and c3 and reset them after 0.2ms
;use bsr mode of ppi 8255
lxi sp,100
mvi a,0fh
out 83h
mvi a,07h
out 83h
call delay
mvi a,06h
out 83h
mvi a,0eh
out 83h
hlt
delay: lxi h,18
l1: dcx h
mov a,l
ora h
jnz l1
ret
 
