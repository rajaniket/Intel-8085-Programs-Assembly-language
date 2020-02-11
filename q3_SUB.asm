;subtract two numbers
;numbers are stored in 0020H and 0021H and result in 0022H
LXI H,0020H   ;initializing HL pair with address 0020h
MOV A,M       ;Moving content of 0020h to acc
INX H         ;increamenting the address in HL pair
SUB M         ;Subtracting the pointer value with acc
STA 0022H     ; saving the result into 0022h
HLT
