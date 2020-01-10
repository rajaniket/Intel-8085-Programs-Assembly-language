;Maximum out of 10 number
;Numbers are stored in 0030h to 0039h and result will be store in 0040h

mvi c,0ah
dcr c
lxi h,0030h   ;HL=>0030h and m will point whatever address HL pair contains
mov a,m
l2: inx h     ; now HL pair is 0031h
cmp m         ; compairing memory content to acc content
jnc l1
mov a,m
l1: dcr c
jnz l2
sta 0040h
hlt
