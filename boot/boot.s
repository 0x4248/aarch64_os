/* AArch64 kernel
 * Github: https://www.github.com/0x4248/aarch64_os
 * Licence: GNU General Public License v3.0
 * By: 0x4248
*/

.global _start

_start:
    ldr x30, =stack_top
    mov sp, x30
    mov x0, #0
    bl kmain
    b .
