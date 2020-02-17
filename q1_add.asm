;Addition of two number
;the numbers are stored in memory location 000AH and 000BH and save the result in 000CH
LXI H,000AH ;MOVING MEMORY ADDRESS TO HL PAIR
MOV A,M ; MOVING CONTENT AT 000AH TO ACC
INX H ; increament in hl pair
ADD M ; adding pointer value to acc
STA 000CH ;storing in memory
HLT


