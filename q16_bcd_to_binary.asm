;Program to convert bcd number to binary 
lxi h,0030h
mov a,m
ani 0fh
mov b,a
mov a,m
ani 240
rrc 
rrc
rrc
rrc
mov d,a
mvi a,00h
l1: adi 0ah
dcr d
jnz l1
add b
sta 0031h
hlt