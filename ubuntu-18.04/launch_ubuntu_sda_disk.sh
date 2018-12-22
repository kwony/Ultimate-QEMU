#!/bin/bash
DISK_PATH=/home/kwony/TASKSPACE/VM/ubuntu-18.04
KERN_PATH=/home/kwony/TASKSPACE/GIT/linux/arch/x86/boot

qemu-system-x86_64 \
        -cpu host \
        -smp 8 \
        -enable-kvm -m 2048 \
        -kernel ${KERN_PATH}/bzImage \
        -append "root=/dev/sda1 console=ttyS0" \
        -drive file=${DISK_PATH}/ubuntu.qcow2,cache=none \
        -display gtk \
        -serial stdio \
