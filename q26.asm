;program to genrate square wave of 1khz using 8254
;use counter 1 with adrdress 81h
mvi a,76h
out 83h
mvi a,208 ;d0
out 81h
mvi a,07h
out 81h
hlt
