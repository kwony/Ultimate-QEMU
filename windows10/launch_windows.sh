#!/bin/bash

qemu-system-x86_64 \
        -cpu host \
        -smp 8 \
        -vga std -enable-kvm -m 2048 \
        -monitor stdio \
        -drive file=windows10.qcow2,cache=none \
        -cdrom Win10_1803_English_x64.iso \
        -display gtk \
