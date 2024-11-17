/* Nathaniel Rivera */
.text
.global _start
_start: 
        LDR x0, =N1
        LDR x1, [x0]
        LDR x0, =N2
        LDR x2, [x0]
        LDR x0, =N3
        LDR x3, [x0]
        MOV x0, #0
        SUBS x0, x1, x2
        BGT A_greater_B
        BLT A_less_B

A_greater_B:
        MOV x4, x1
        B checkC

A_less_B:
        MOV x4, x2

checkC:
        SUBS x0, x3, x4
        BGT C_greater
        MOV x0, x4
        B end

C_greater:
        MOV x0, x3

end:
        LDR x1, =Biggest
        STR x0, [x1]
        MOV x8, #93
        SVC #0

.data
N1: .quad 2
N2: .quad 19
N3: .quad 89
Biggest: .skip 1
