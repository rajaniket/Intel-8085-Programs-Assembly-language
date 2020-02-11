;A set of data are stored in memory location starting from 0030h 
;Add the data bytes together till it counters with zeros
;store the result in 0040h and carry in 0041h
lxi h,0030h  ;initializing HL pair 
mvi a,00h    ;moving 00 to acc
mvi b,00h
mvi c,00h
mvi d,00h
l2: mov a,m
cmp b         ;Comparing content at b with acc content
jz end        ;if zero jump to end
add d         ;adding d with accumulator
jnc l1        ;if not carry jump l1
inr c
l1: mov d,a
inx h
jmp l2
end: mov a,d  
sta 0040h   ; saving result at mem location 0040h
mov a,c
sta 0041h   ; saving carry
hlt   
