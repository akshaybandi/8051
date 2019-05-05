;1 sec delay using 100msec delay and 1msec delay
cseg at 0

acall delay_1sec

delay_1ms:
mov r0,#255
djnz r0,$
mov r0,#241
djnz r0,$
ret

delay_100ms:
mov r1,#100
L1:
acall delay_1ms
djnz r1,L1
ret

delay_1sec:
mov r2,#10
L2:
acall delay_100ms
djnz r2,L2
end