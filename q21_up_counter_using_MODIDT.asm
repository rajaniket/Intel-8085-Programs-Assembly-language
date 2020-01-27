;display up counter on 8085 kit with delay of 0.25 sec use MODIDT(036E) subroutine to display acc content
;pre-defined subroutine modidt for displaying data 
lxi sp,0040h
mvi a,00h
l1: push psw   ; Pushing psw (Acc+Flags) into stack because MODIDT disturbes acc content that we don't want 
call 036Eh ;Calling pre defined MODIDT subroutine (it will display Acc content on display)
call delay
pop psw
inr a
jmp l1
delay: lxi h,7a0fh   ; Initializing HL pair with proper value so that it will give delay of 0.25 sec
k1: dcx h
mov a,l
ora h
jnz k1            ; jump to k1(dcx h) if not zero
ret
