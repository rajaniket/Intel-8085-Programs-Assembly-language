;program to generate pulse of 2Mhz using 8254
;using mode 2 of 8254
mvi a,14h
out 83h
mvi a,64h
out 80h
hlt
