/* AArch64 kernel
 * Github: https://www.github.com/lewisevans2007/aarch64_os
 * Licence: GNU General Public License v3.0
 * By: Lewis Evans
*/

void kernel_call_poweroff()
{
    asm volatile(
        "ldr x0, =0x84000008\n"
        "hvc #0\n");
}