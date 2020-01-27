; Display Down counter using 8 1bit led with delay of 0.25 sec use ppi 8255 port to take output
lxi sp,0040h   ;initializing stack pointer because of subroutine delay
mvi a,80h
out 13h
l1: mvi b,255  ;moving FF to b
l2: mov a,b
out 10h
call delay     ; Calling delay subroutine 
dcr b
mov a,b
cpi 00         ; Compare 00 with acc 
jnz l2
jmp l1

delay: lxi h,7a0fh    ; Putting value in HL pair for 0.25sec delay
k1: dcx h
mov a,l
ora h
jnz k1
ret                  ; Return to main program
