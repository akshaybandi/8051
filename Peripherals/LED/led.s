; led blinking after 100 msec 
led equ p1.0        ; 1 led at port p1.0
extrn code (delay_100ms)
cseg at 0
again:
clr led             ; led is off
lcall delay_100ms
setb led            ; led is on
lcall delay_100ms
sjmp again
end
