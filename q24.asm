;prog to display 99 at port A
;1's compliment of 99 at port B
;2's compliment of 99 at port c
;use i/o mode of ppi 8255
mvi a,80h
out 33h
mvi a,99h
out 83h
cma 
out 31
inr a
out 32
hlt

