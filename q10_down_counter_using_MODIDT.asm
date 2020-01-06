;Show the Down counter with delay of 0.25 sec on kit display use MODIDT(036E) subroutine for displaying 
;pre-defined subroutine modidt for displaying data 
lxi sp,0040h  ;lxi used to move 16 bit data immediately to register pair 
mvi a,ffh   ; moving immediately value to a
l1: push psw ; pushing program status world (val of acc and register flag) into stack because modidt can manuplate acc and flag content so we are saving it before modidt going to be excuted
call 036Eh ;MODIDT is a predefined function used to display acc content onto display of 8255 kit
call delay  ; calling delay which is defined in bottom
pop psw  ; poping the psw from the stack 
dcr a ;dcr acc content
jmp l1 ;jump to push psw
delay: lxi h,7a0fh   ;defining delay using register pair method
k1: dcx h            ;decrementing value of h reg
mov a,l              ;moving L reg val to acc so that we can perform or operation with h and when both become zero then it will comes out of loop
ora h 
jnz k1
ret                  ; returning to main program because it is inside subroutine
q10_down_counter_using_MODIDT
