;Arrange the number stores in the memory(0030h to 0039h) into ascending order 
;
mvi c,0ah     ; initializing counter value
dcr c         ; decreasing the counter because it will count 4 ---> 0 =>5 ,when c=0 assending work completed
l3: mov b,c   ; b is also a counter in case of innner loop 
lxi h,0030h   ; points to first value
l2: mov a,m   ; moving 1st value to acc because we want to compare it with next number 
inx h         ; now 'M' will point next data (e.g. 0031h)
cmp m         ; comparing a with m (a-m)
jc l1         ; if m ig greater then jump to l1 means there is no need of exchange (e.g. 0030h<0031h)
mov d,m       ; now saving the pointed value to reg d so that it remains safe (not get replaced) e.g. d <---- 0031h
mov m,a       ; after saving m value we replace it with acc data means indirectly (0031h <------ 0030h)
dcx h         ; decreamented reg h, means now it will point m (m=>m-1)   e.g. h=0030h
mov m,d       ; m <---- d (d had the data of 0031h,now it is transferd to 0030h)   
inx h         ;now m is back to its original h=0031h
l1: dcr b     ; b-1
jnz l2        ;
dcr c      
jnz l3
hlt
