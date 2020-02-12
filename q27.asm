;program to generate pulse of 2Mhz using 8254
;using mode 2 of 8254
mvi a,14h  ; moving appropriate contol word 
out 83h    ; excuted control word
mvi a,64h  ; =>for 2MHz
out 80h    ; Out through port A
hlt
