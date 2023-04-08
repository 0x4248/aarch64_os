/* AArch64 kernel entry point
 * Github: https://www.github.com/awesomelewis2007/aarch64_os
*/

.global _start

_start:
    ldr x30, =stack_top
    mov sp, x30
    mov x0, #0
    bl kmain
    b .
