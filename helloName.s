/* -- helloName.s */
/* Nathaniel Rivera */
.global _start
_start:
        mov x0, #1
        ldr x1, =askString
        mov x2, #27
        mov x8, #64
        svc #0

        mov x0, #0
        ldr x1, =initial
        mov x2, #1
        mov x8, #63
        svc #0

        mov x0, #1
        ldr x1, =helloString
        mov x2, #6
        mov x8, #64
        svc #0

        mov x0, #1
        ldr x1, =initial
        mov x2, #1
        mov x8, #64
        SVC #0

        mov x0, #1
        ldr x1, =endput
        mov x2, #3
        mov x8, #64
        svc #0

        mov x8, #93
        svc #0

.data
helloString:
.ascii "Hello "

askString:
.ascii "What is your first inital?\n"

initial: .space 1

endput: 
.ascii "!\n"
