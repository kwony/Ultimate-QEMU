#!/bin/bash

qemu-system-x86_64 \
        -cpu host \
        -smp 8 \
        -vga std -enable-kvm -m 2048 \
        -monitor stdio \
        -drive file=ubuntu.qcow2,cache=none \
        -display gtk \
        -D log.d \
