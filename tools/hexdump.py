import subprocess

with open("README.md", "r") as f:
    lines = f.readlines()

hexdump_output = subprocess.check_output(["hexdump", "kernel.elf"])
lines.insert(20, "## Hexdump of image\n```\n" + hexdump_output.decode() + "\n```\n")

with open("README.md", "w") as f:
    f.writelines(lines)
