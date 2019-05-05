; display 0 to 255 on 8 leds
leds equ p2       ; connect 8 leds across port 2
extrn code (delay_100ms)
cseg at 0
mov a,#0x00
L1:
mov leds,a        ; displaying 0 to 255 on 8 leds
lcall delay_100ms
lcall delay_100ms
inc a
cjne a,#255,L1
end
