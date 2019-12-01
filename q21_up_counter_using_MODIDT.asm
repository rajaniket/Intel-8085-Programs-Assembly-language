;display up counter on 8085 kit with delay of 0.25 sec use MODIDT(036E) subroutine to display acc content
;pre-defined subroutine modidt for displaying data 
lxi sp,0040h
mvi a,00h
l1: push psw
call 036Eh ;MODIDT
call delay
pop psw
inr a
jmp l1
delay: lxi h,7a0fh
k1: dcx h
mov a,l
ora h
jnz k1
ret
