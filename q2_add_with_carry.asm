;Addition of two numbers with carry 
;Numbers are stored in 0020h and 0021h & Result in 0022h
;store carry value in 0023h
MVI B,00H
LXI H,0020H
MOV A,M
INX H
ADD M
JNC ANIKET
INR B
ANIKET: STA 0022H
MOV A,B
STA 0023H  
HLT