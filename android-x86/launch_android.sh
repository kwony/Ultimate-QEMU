#!/bin/bash

qemu-system-x86_64 \
        -cpu host \
        -smp 8 \
        -vga std -enable-kvm -m 2048 \
        -monitor stdio \
        -drive file=android.qcow2,cache=none \
        -cdrom android-x86_64-8.1-rc1.iso \
        -display gtk \
