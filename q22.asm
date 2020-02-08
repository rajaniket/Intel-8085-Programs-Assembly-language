; Program to generate square wave of 10kHz using ppi 8255
; using output port Port c,bit3
lxi sp,0064        ; Initializing stack pointer
k1: mvi a,07h      ; moving 07h to register (control word for set)
out 73h            ; output from port c (high)
call delay         ; calling delay (subroutine is defined in bottom)
mvi a,06h          ; Reset
out 73h            ; output from port c (Low)
call delay         ; calling delay 
jmp k1             ; jump to k1 (continue)
delay: lxi h,18    ; delay definition (10kHz)
l1: dcx h
mov a,l
ora h
jnz l1
ret
 
