;10 msec delay using 1msec delay
cseg at 0
acall delay_10ms

delay_1ms:    ; creates 1 msec of delay
mov r0,#255
djnz r0,$
mov r0,#244
djnz r0,$
ret

delay_10ms:   ; creates 10 msec of delay
mov r1,#10    ; 1 msec x 10 = 10 msec
L1:
acall delay_1ms
djnz r1,L1
end
