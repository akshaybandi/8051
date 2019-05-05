extrn code (delay_100ms)
cseg at 0
L2:
setb p1.1
lcall delay_100ms
clr p1.1
lcall delay_100ms
sjmp L2
end