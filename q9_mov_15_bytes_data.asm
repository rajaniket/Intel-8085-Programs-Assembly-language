;move the 15 bytes of data stored in memory location (0030h to 003Eh) into memory location (0040H to 004E) 
lxi h,0030h   ;initializing HL pair 
lxi d,0040h   ;initializing DE pair
mvi c,0fh     ;Moving 0fh to c
start: mov a,m  ; moving content at memory address 0030h (which is stored in HL pair) to acc
stax d          ;contents of the accumulator are copied into the memory location which is stored in DE pair
inx d           ;increment in address (which is store in DE)
inx h           ;increment in address (which is store in HL)
dcr c           ;Decrementing counter value
jnz start       ;jump if counter is not zero to "start"
hlt
