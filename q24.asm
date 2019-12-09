;prog to display 99 in port A
;1's compliment of 99 in port B
;2's compliment of 99 in port c
;use i/o mode of 8255
mvi a,80h
out 33h
mvi a,99h
out 83h
cma 
out 31
inr a
out 32
hlt

