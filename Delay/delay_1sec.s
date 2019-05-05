;1 sec delay using 100msec delay and 1msec delay
cseg at 0

acall delay_1sec

delay_1ms:    ; creates 1 msec of delay
mov r0,#255
djnz r0,$
mov r0,#241
djnz r0,$
ret

delay_100ms:    ; creates 100 msec of delay
mov r1,#100     
L1:
acall delay_1ms   ; 1 msec x 100 = 100 msec delay
djnz r1,L1
ret

delay_1sec:   ; creates 1 sec of delay
mov r2,#10
L2:
acall delay_100ms   ; 100 msec x 10 = 1 sec delay
djnz r2,L2
end
