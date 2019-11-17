;Smallest number among two numbers
;the numbers are stored in mem locn 002h & 0021h
;store the smallest number in 0022h

LXI H,0020H
MOV A,M
INX H
CMP M
JC LABEL
MOV A,M
LABEL: STA 0022H
HLT