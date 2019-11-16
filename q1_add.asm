;Addition of two number
;take numbers from memory location c100h and c101h 
LXI H,000AH ;MOVING MEMORY ADDRESS TO HL PAIR
MOV A,M ; MOVING CONTENT AT 000AH TO ACC
INX H
ADD M
STA 000CH
HLT


