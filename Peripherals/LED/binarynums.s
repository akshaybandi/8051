leds equ p2
extrn code (delay_100ms)
cseg at 0
mov a,#0x00
L1:
mov leds,a
lcall delay_100ms
lcall delay_100ms
inc a
cjne a,#255,L1
end