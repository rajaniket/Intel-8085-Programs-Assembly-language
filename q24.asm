;prog to display 99 at port A of ppi 8255
;1's compliment of 99 at port B of ppi 8255
;2's compliment of 99 at port c of ppi 8255
;use i/o mode of ppi 8255
mvi a,80h   ; moving control word
out 33h     ; contol word executed
mvi a,99h   
out 83h
cma 
out 31
inr a
out 32
hlt

