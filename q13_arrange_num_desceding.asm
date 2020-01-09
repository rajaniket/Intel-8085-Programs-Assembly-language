;Arrange the number stores in the memory into dscending order

mvi c,0ah  ;mov 8 bit immediate data into c
dcr c      ;decreament c
mov b,c
l3: lxi h,0030h   ;immediate data in H-L pair
l2: mov a,m
inx h            ; increament h
cmp m            ; compare pointer m with acc
jnc l1           ; jump if not cary to L1=> line 16
mov d,m
mov m,a
dcx h
mov m,d
inx h
l1: dcr b
jnz l2
dcr c
jnz l3         ;jump not zero
hlt
