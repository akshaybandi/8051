dly segment code
rseg dly

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

delay_1sec:
mov r2,#10
L2:
lcall delay_100ms
djnz r2,L2
ret
public delay_1sec
end
