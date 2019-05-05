;100 msec delay using 1msec delay.
cseg at 0

acall delay_100ms

delay_1ms:
mov r0,#255
djnz r0,$
mov r0,#244
djnz r0,$
ret

delay_100ms:
mov r1,#100
L1:
acall delay_1ms
djnz r1,L1
end