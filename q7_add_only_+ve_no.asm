;To add only postive number out of 10 numbers stored in mem locn 0030h 0039h;
;store the addition result in 0040h and carry in 0041h

mvi c,0fh ; intializing counter value
mvi b,00h ; B will story carry 
mvi d,00h
mvi a,00h
lxi h,0030h ; initializing HL pair with 0030h
start: mov a,m   ;moving pointer content in to acc
ani 80h   ; and operation between 80h and acc
jz label  ; if zero jump to label
jmp label1  ; jump to label1
label: mov a,m
add d
mov d,a
jnc label1
inr b
label1: inx h
dcr c
jz label2
jmp start    ; jump to start 
label2: mov a,d ;moving final result into acc
sta 0040h   ; storing acc content on to mem locn 0040h
mov a,b    ;moving carry into acc
sta 0041h   ; saving acc content into memory
hlt 
