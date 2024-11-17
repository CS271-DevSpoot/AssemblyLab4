/* Nathaniel Rivera | AAL4 P2 */
.text
.global _start

_start:
        MOV x1, #25 /* n */
        MOV x2, #1 /* first */
        MOV x3, #1 /* second */
        MOV x4, #2 /* i */
        B while

while:
        CMP x4, x1
        BGE end /* end if i >= n */
        ADD x0, x2, x3 /* f_new = first + second */
        MOV x2, x3 /* first = second */
        MOV x3, x0 /*second = f_new*/
        LDR x9, =fibs
        LSL x10,  x4, #2
        STR x0, [x9, x10]
        ADD x4, x4, #1 /* i++ */
        B while /* loop */
end:
        LDR x1, =Result
        STR x0, [x1]
        MOV x8, #93 /* setting up exit code */
        SVC #0 /* syscall exit */

.data
Result: .skip 100
.balign 4
fibs: .skip 100
