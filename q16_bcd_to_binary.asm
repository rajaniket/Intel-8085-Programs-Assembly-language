;Program to convert bcd number to binary 
;take input from memory locn 0030h

lxi h,0030h   ;initializing hl pair with 0030h
mov a,m       ;moving content of memory location which address is stored in hl pair
ani 0fh       ;and operation with acc for making msb zero(msb masking)
mov b,a       ;moving acc content into register b;
mov a,m       ;moving content of memory location which address is stored in hl pair 
ani 240       ;lsb masking
rrc           ;rotate cary right
rrc
rrc
rrc
mov d,a       ;saving acc content into d
mvi a,00h     ;moving immediate data into acc
l1: adi 0ah   ;adding 10 into acc;
dcr d         ;decreamenting d which is storing msb value
jnz l1
add b
sta 0031h     ;storing result onto mem locn 0031h
hlt
