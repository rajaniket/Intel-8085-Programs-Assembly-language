;add 10 bytes of data stored in memory address 0030 to 0039
;store the result in 0040 and addtion carries in 0041

mvi c,0Ah ;intializing counter value
mvi a,00h
mvi b,00h ;for carry
lxi h,0030h
begin: add m
jnc label
inr b
label: inx h
dcr c
jnz begin
sta 0040h
mov a,b
sta 0041h
hlt
