;Largest of two number 
;Assumed that numbers are stored in 0020H & 0021H
;Save the largest number in 0022H
LXI H,0020H
MOV A,M
INX H
CMP M
JNC label
MOV A,M
label: STA 0022H
HLT