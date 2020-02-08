;Largest of two number 
;Assumed that numbers are stored in 0020H & 0021H
;Save the largest number in 0022H
LXI H,0020H  ; Initializing hl pair with address(pointer)
MOV A,M      ; moving content at 0020h into A
INX H        ; Increamenting H=> e.g 0021h
CMP M        ; Comparing M with Accumulator (A-M)
JNC label    ; If acc is greater (not carry) jump to label
MOV A,M
label: STA 0022H
HLT
