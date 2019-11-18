;To add only postive number out of 10 numbers stored in 
; mem locn 0030h 0039h;
;store the addition result in 0040h and carry in 0041h
mvi c,0fh ; intializing counter value
mvi b,00h ; B will story carry 
mvi d,00h
mvi a,00h
lxi h,0030h
start: mov a,m
ani 80h
jz label
jmp label1
label: mov a,m
add d
mov d,a
jnc label1
inr b
label1: inx h
dcr c
jz label2
jmp start
label2: mov a,d
sta 0040h
mov a,b
sta 0041h
hlt 