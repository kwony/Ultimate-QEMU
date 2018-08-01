# Run android-x86 oreo with QEMU on Ubuntu 16.04

## Prerequsite

1. Get android-x86 oreo iso image from the site <br>

> http://www.android-x86.org/releases/releasenote-8-1-rc1

2. Install qemu with the latest code <br>

3. Create empty qcow2 file disk image <br>

> qemu-img create -f qcow2 android.qcow2 20G

4. (optional) Enable kvm module in your host computer <br>
kvm module will make your virtual machine run faster!

Now everthing is prepared...
