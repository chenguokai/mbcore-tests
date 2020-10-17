../riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-apple-darwin/bin/riscv64-unknown-elf-objcopy -O binary /Users/cgk/ownCloud/课程/一生一芯/ict/riscv-tests/isa/rv32ui-p-add   ../test.bin.ori

../riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-apple-darwin/bin/riscv64-unknown-elf-objcopy -I binary -O binary --reverse-bytes=4 ../test.bin.ori ../test.bin
