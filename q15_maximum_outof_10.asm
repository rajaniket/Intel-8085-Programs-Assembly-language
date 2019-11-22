;Maximum out of 10 number
;Numbers are stored in 0030h to 0039h and result will be store in 0040h

mvi c,0ah
dcr c
lxi h,0030h
mov a,m
l2: inx h
cmp m
jnc l1
mov a,m
l1: dcr c
jnz l2
sta 0040h
hlt
