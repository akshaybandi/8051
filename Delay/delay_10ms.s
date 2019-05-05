;10 msec delay using 1msec delay
cseg at 0
acall delay_10ms

delay_1ms:
mov r0,#255
djnz r0,$
mov r0,#244
djnz r0,$
ret

delay_10ms:
mov r1,#10
L1:
acall delay_1ms
djnz r1,L1
end