# Conclusions

If you are looking for run a fast app I recommend you use pure
assembly because if you use assembly with printf calls it run at
the same speed like a C app.

Look the differences between the 3 benchmarks:
[print_every_number](https://github.com/airvzxf/assembly/tree/master/linux/benchmark/fibonacci/print_every_number),
[print_last_number](https://github.com/airvzxf/assembly/blob/master/linux/benchmark/fibonacci/print_last_number)
and
[without_print](https://github.com/airvzxf/assembly/blob/master/linux/benchmark/fibonacci/without_print).

Let's talk about the file size.
FASM is the really winner with 176B vs the next app smaller
with 1.4KB.

Let's talk aobut compilers.
If you don't use the printf call these three are exactly the same,
not improvements in performance and file size.

`ld -m elf_i386` Emulate the i386 processor.

`gcc -m64` GCC for 64-bits.

`ld --oformat elf64-x86-64` Convert the output format to ELF 64-bits.

`ld x -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2` Use it if you call the printf extension.

---

[ReadMe for print_every_number](https://github.com/airvzxf/assembly/blob/master/linux/benchmark/fibonacci/print_every_number/README.md).

[ReadMe for print_last_number](https://github.com/airvzxf/assembly/blob/master/linux/benchmark/fibonacci/print_last_number/README.md).

[ReadMe for without_print](https://github.com/airvzxf/assembly/blob/master/linux/benchmark/fibonacci/without_print/README.md).
