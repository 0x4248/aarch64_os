# AArch64 kernel
# Github: https://www.github.com/0x4248/aarch64_os
# By: 0x4248

import subprocess

with open("README.md", "r") as f:
    lines = f.readlines() 
lines = lines[:19]

hexdump_output = subprocess.check_output(["hexdump", "kernel.elf"])
lines.insert(20, "## Hexdump of image\n```\n" + hexdump_output.decode() + "\n```\n")

with open("README.md", "w") as f:
    f.writelines(lines)
