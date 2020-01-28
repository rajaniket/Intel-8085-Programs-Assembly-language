;Take input from port B and c lower
;And display it from port A and port c lower bit respectively
;use i/o mode of 8255
mvi a,83h   // Defining control word
out 83h
in 81h
out 80h   // port A
in 82h
rlc
rlc
rlc
rlc
out 82h   // Port c
hlt
