delay segment code
rseg delay

delay_1ms:
mov r0,#255
djnz r0,$
mov r0,#244
djnz r0,$
ret

delay_100ms:
mov r1,#100
L1:
lcall delay_1ms
djnz r1,L1
ret
public delay_100ms
end