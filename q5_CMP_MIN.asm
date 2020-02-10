;Smallest number among two numbers
;the numbers are stored in mem locn 002h & 0021h
;store the smallest number in 0022h

LXI H,0020H  ;initializing hl pair with 0020h
MOV A,M      ;moving content at address which is stored in hl pair to accum
INX H        ;increament hl pair
CMP M        ;Comparing new content with content at accumulator
JC LABEL     ; jump if carry  to label 
MOV A,M      
LABEL: STA 0022H   ; save acc content to memory location 0022h 
HLT
