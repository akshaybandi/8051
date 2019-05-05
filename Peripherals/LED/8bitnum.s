leds equ p2
cseg at 0
mov a,#0xb3
mov leds,a
sjmp $
end
