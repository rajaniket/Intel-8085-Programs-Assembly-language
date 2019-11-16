;subtract two numbers
;numbers are stored in 0020H and 0021H and result in 0022H
LXI H,0020H
MOV A,M
INX H 
SUB M
STA 0022H
HLT