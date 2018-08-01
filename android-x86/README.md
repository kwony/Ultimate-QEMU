# Run android-x86 oreo with QEMU on Ubuntu 16.04

## Prerequsite

1. Get android-x86 oreo iso image from the site <br>

> http://www.android-x86.org/releases/releasenote-8-1-rc1

2. Install qemu with the latest code <br>
<pre><code>
git clone git@github.com:qemu/qemu.git
cd qemu
# Configure qemu various options.
./configre --target-list=x86_64-softmmu --enable-debug --enable-kvm --enable-vnc
make -j8
sudo make install
</code></pre>

3. Create empty qcow2 file disk image <br>

> qemu-img create -f qcow2 android.qcow2 20G

4. (optional) Enable kvm module in your host computer <br>
kvm module will make your virtual machine run faster!

### Run android QEMU

1. Launch qemu with options <br>
<pre><code>
qemu-system-x86_64 \
        -cpu host \
        -smp 8 \ 
        -vga std -enable-kvm -m 2048 \
        -monitor telnet:localhost:8080,server,nowait \
        -drive file=android.qcow2,cache=none \
        -cdrom android-x86_64-8.1-rc1.iso \
</code></pre>

Below log message may be printed on your monitor
> VNC server running on 127.0.0.1:5900

2. Use VNC protocol and connect <br>

Ubuntu 16.04 has "Reminna Remote Desktop Client" software as default. <br>
Change protocol type to VNC and insert address localhost:5900 <br>
