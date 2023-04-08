/* AArch64 kernel
 * Github: https://www.github.com/awesomelewis2007/aarch64_os
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

char getchar()
{
    while ((*uart & 0x01) == 0) {}
    return (char)(*uart);
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
