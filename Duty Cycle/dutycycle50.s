extrn code (delay_100ms)    ; delay_100ms subroutine is external to this file.
cseg at 0
L2:
setb p1.1             ; set p1.0 bit
lcall delay_100ms     ; 100 msec delay.
clr p1.1              ; clear p1.0 bit
lcall delay_100ms     ; 100 msec delay
sjmp L2               ; repeat again
end
