#!/bin/bash
DISK_PATH=/home/kwony/TASKSPACE/VM/ubuntu-18.04

qemu-system-x86_64 \
        -cpu host \
        -smp 8 \
        -vga std -enable-kvm -m 2048 \
        -monitor stdio \
        -drive file=${DISK_PATH}/ubuntu.qcow2,cache=none \
        -D log.d \
