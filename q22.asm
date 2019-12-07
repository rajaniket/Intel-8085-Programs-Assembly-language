; Program to generate square wave of 10kHz using ppi 8255
; using output port Port c,bit3
lxi sp,0064
k1: mvi a,07h
out 73h
call delay
mvi a,06h
out 73h
call delay
jmp k1
delay: lxi h,18
l1: dcx h
mov a,l
ora h
jnz l1
ret
 
