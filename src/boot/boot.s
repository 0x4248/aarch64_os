/* AArch64 kernel entry point
 * Github: https://www.github.com/lewisevans2007/aarch64_os
 * By: Lewis Evans
*/

.global _start

_start:
    ldr x30, =stack_top
    mov sp, x30
    mov x0, #0
    bl kmain
    b .
