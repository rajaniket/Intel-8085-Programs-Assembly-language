;Add two 16 bit number with each other and store the result in 0035h,0036h and carry into 0038h
mvi c,00h
lhld 0030h    ;imeediate data transfer to h-l pair 
xchg          ;exchanging h-l pair data with d-e pair
lhld 0032h
dad d         ; it is used for 16 bit addition    H-L <---  H-L  +  D-E
jnc l1
inr c
l1: shld 0035h   ;saving H-L pair content to 0035h and 0036h
mov a,c
sta 0038h    ; storing acc content to 0038h
hlt


q11_add_16bit number
