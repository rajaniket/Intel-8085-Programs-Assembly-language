;A set of data are stored in memory location starting from 0030h 
;Add the data bytes together till it counters with zeros
;store the result in 0040h and carry in 0041h
lxi h,0030h
mvi a,00h
mvi b,00h
mvi c,00h
mvi d,00h
l2: mov a,m
cmp b
jz end
add d
jnc l1
inr c
l1: mov d,a
inx h
jmp l2
end: mov a,d
sta 0040h
mov a,c
sta 0041h
hlt   
