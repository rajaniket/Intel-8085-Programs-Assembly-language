;mov 15 bytes of data

lxi h,0030h
lxi d,0040h
mvi c,0fh
start: mov a,m
stax d
inx d
inx h
dcr c
jnz start
hlt
