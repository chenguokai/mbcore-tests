../riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-apple-darwin/bin/riscv64-unknown-elf-objcopy -O binary /Users/cgk/Downloads/prj4-cebarobot-master/benchmark/advanced/bin/to-lower-case  ../test.bin.ori

../riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-apple-darwin/bin/riscv64-unknown-elf-objcopy -I binary -O binary --reverse-bytes=4 ../test.bin.ori ../test.bin
