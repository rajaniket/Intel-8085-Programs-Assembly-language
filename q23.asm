;prog to add content of portA and PortB
;show its result in port c
;use i/o mode of 8255
lxi sp,100 ;initializing stack pointer 
mvi a,92h  ;moving control word
out 83h    ; executing control word into control register 
in 80      ; taking input fron port A
mov b,a    ; moving input data to registor B
in 81      ; taking input fron port B
add b      ; a=a+b
out 82     ;addition result sending in port C
hlt
delay: lxi h,18   
l1: dcx h
mov a,l
ora h
jnz l1
ret
 
