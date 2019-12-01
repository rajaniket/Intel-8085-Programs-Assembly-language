;Show the Down counter with delay of 0.25 sec on kit display use MODIDT(036E) subroutine for displaying 
;pre-defined subroutine modidt for displaying data 
lxi sp,0040h
mvi a,ffh
l1: push psw
call 036Eh ;MODIDT
call delay
pop psw
dcr a
jmp l1
delay: lxi h,7a0fh
k1: dcx h
mov a,l
ora h
jnz k1
ret
