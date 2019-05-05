; show 8 bit number on 8 leds
leds equ p2   ; connect 8 led's across p2 port.
cseg at 0
mov a,#0xb3   ; mov a,#number
mov leds,a    
sjmp $
end
