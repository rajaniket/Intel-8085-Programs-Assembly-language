;add 10 bytes of data stored in memory address 0030 to 0039
;store the result in 0040 and addtion carries in 0041

mvi c,0Ah ;intializing counter value
mvi a,00h 
mvi b,00h ; B for storing carry
lxi h,0030h ; initialzing HL pair with 0030h
begin: add m  ;add pointer with acc content
jnc label     ;jump not carry to label
inr b    ; increament b content
label: inx h   ; increament hl pair 
dcr c  ; decreament c 
jnz begin   ; jump if not zero to begin
sta 0040h  ; store addition result in 0040h
mov a,b
sta 0041h  ; store carry on to 0041h
hlt
