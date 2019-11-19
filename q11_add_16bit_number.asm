;Add two 16 bit number with each other and store the result in 0035h,0036h and carry into 0038h
mvi c,00h
lhld 0030h
xchg
lhld 0032h
dad d
jnc l1
inr c
l1: shld 0035h
mov a,c
sta 0038h
hlt


