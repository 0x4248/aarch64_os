/* AArch64 kernel
 * Github: https://www.github.com/lewisevans2007/aarch64_os
 * By: Lewis Evans
*/

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>

volatile uint8_t *uart = (uint8_t *)0x09000000;

void putchar(char c)
{
    *uart = c;
}

void printk(const char *s)
{
    while (*s != '\0')
    {
        putchar(*s);
        s++;
    }
}

void kmain(void)
{
    printk("Welcome to this simple aarch64 OS!\n");
}
