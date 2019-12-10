;Take input from port B and c lower
;And display it from port A and port c lower bit respectively
;use i/o mode of 8255
mvi a,83h
out 83h
in 81h
out 80h
in 82h
rlc
rlc
rlc
rlc
out 82h
hlt
