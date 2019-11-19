;move the 15 bytes of data stored in memory location (0030h to 003Eh) into memory location (0040H to 004E) 
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
