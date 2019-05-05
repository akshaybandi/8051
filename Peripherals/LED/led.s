led equ p1.0
extrn code (delay_100ms)
cseg at 0
again:
clr led
lcall delay_100ms
setb led
lcall delay_100ms
sjmp again
end