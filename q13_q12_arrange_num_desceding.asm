;Arrange the number stores in the memory into assending order
;
mvi c,0ah
dcr c
mov b,c
l3: lxi h,0030h
l2: mov a,m
inx h
cmp m
jc l1
mov d,m
mov m,a
dcx h
mov m,d
inx h
l1: dcr b
jnz l2
dcr c
jnz l3
hlt
