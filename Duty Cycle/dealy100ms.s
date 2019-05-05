delay segment code
rseg delay

delay_1ms:      ; creates 1 msec of delay.
mov r0,#255
djnz r0,$
mov r0,#244
djnz r0,$
ret

delay_100ms:    ; creates 100 msec delay.
mov r1,#100
L1:
lcall delay_1ms
djnz r1,L1
ret
public delay_100ms    ; can accesible to other file.
end
