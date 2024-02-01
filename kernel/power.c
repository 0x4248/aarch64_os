void kernel_call_poweroff()
{
    asm volatile(
        "ldr x0, =0x84000008\n"
        "hvc #0\n");
}