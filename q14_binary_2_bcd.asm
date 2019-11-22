;Convert binary equivalent to bcd equivalent
mvi b,00h
mvi c,00h
mvi d,64h
lxi h,0030h
mov a,m
k1: sub d
jc l1
inr b
jmp k1
l1: add d
mvi d,0ah
k2: sub d
jc l2
inr c
jmp k2
l2: add d
inx h
mov m,b
inx h 
mov m,c
inx h
mov m,a
hlt

