extrn code (delay_1sec)

cseg at 1000h
lut : db 0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90    ; hex representation of 0 to 9 to be displayed on 7 segment.
cseg at 0
mov dptr,#lut   ; moving addresss of lut (1000h) into dptr
again:
clr a           ; clear accumulator
movc a,@a+dptr  ; 0+1000h,0+1001h,0+1002h,0+1003h,0+1004h,0+1005h,0+1006h,0+1007h,0+1008h,0+1009h.
mov p1,a        ; p1 <- a
mov a,dpl       ; a <- dpl
inc dptr        ; dptr + 1
lcall delay_1sec
cjne a,#09,again
sjmp $
end
