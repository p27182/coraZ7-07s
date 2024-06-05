# coraZ7-07s
an example build for the digilent cora z7-07s fpga board using vivado, vitis, and petalinux put together because the official project wouldnt work (I still do not know why- possibly due to old versioning of petalinux and ubuntu host).

## versions
vivado 2022.1

vitis 2022.1

petalinux 2023.1

## helpful walkthroughs:

https://www.youtube.com/watch?v=KQx3m-WqkB4

https://community.element14.com/members-area/personalblogs/b/blog/posts/getting-started-with-the-cora-z7-board---a-step-by-step-guide-to-creating-a-sdk-project
(This build does not paste in the example code as shown in these links)

https://www.adiuvoengineering.com/post/microzed-chronicles-petalinux-i2c-in-the-ps-and-axi-iic

## NOTES:
- vivado/vitis on windows 10 pro
- petalinux on wsl ubuntu 22.04
- vivado does not support paths with spaces
- vivado does not support UNC paths so the vivado directory cannot exist in wsl home
- be sure to have the boot-mode jumper in the correct position when running debug (or when booting off sd image)
- for sd boot make sure petalinux-config >> Image Packaging Configuration >> Root Filesystem type : EXT4 SD/eMMC/SATA/USB

## petalinux dependencies

ran these in chunks to assess any issues...
```
sudo dpkg --add-architecture i386
Sudo dpkg-reconfigure locales (generate all of em because yolo)
sudo apt-get install gparted xinetd gawk gcc net-tools ncurses-dev openssl libssl-dev flex bison xterm autoconf libtool texinfo zlib1g-dev
sudo apt-get install iproute2 make libncurses5-dev tftpd libselinux1 wget diffstat chrpath socat tar unzip gzip python2 tofrodos lsb libftdi1 libftdi1-2
sudo apt install python3-pip
pip install pylint #(sudo? Try without first) may need: pip3 install pylint
sudo apt-get install debianutils iputils-ping libegl1-mesa libsdl1.2-dev python3 cpio tftpd-hpa gnupg zlib1g:i386 haveged perl xvfb
sudo apt-get install gcc-multilib build-essential automake screen putty pax g++ python3-pip xz-utils python3-git python3-jinja2 python3-pexpect
sudo apt-get install liberror-perl mtd-utils xtrans-dev libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
sudo apt-get install util-linux sysvinit-utils cython3 google-perftools patch diffutils ocl-icd-libopencl1 opencl-headers ocl-icd-opencl-dev
sudo apt-get install libncurses5 libncurses5-dev libncursesw5:amd64 libncursesw5-dev libncurses5:i386 libtinfo5 libstdc++6:i386 libgtk2.0-0:i386 dpkg-dev:i386
```
Installing in homedir:
(bash-only! Not zsh!)
```
INSTALL_DIR=/home/pat/petalinux/2023.2/
bash ./petalinux-$VERSION-installer.run - $INSTALL_DIR
```

I also discovered that the settings ($INSTALL_DIR/settings.sh) file to be sourced has an issue with zsh, but if you edit the way the script grabs the working directory when sourced everything seems to run in zsh just fine.


## creating petalinux env (after exporting xsa)

petalinux cmds used to create project from xsa (see UG1144 for details):
- `petalinux-create --type project --template zynq --name petalinux`
- `petalinux-config --get-hw-description=$xsa_dir` ($xsa_dir in my case with wsl was /mnt/c/vivado-projects/cora_5/design_1_wrapper.xsa)
	- in the petalinux-config UI: Image Packaging Configuration>Root Filesystem type>(Select EXT4 for sd)
- `petalinux-build`
	- this will take a while and if you have a single-cpu coraZ7-07s it will error out due to a device tree file containing information about the second cpu (which doesnt exist).
	- error indicating this includes: `/path/to/proj/coraZ7-07s/petalinux/components/plnx_workspace/device-tree/device-tree/zynq-7000.dtsi:552.16-565.5: ERROR (phandle_references): /axi/ptm@f889d000: Reference to non-existent node or label "cpu1"`

you need to edit `coraZ7-07s/petalinux/components/plnx_workspace/device-tree/device-tree/zynq-7000.dtsi` as follows

`nano coraZ7-07s/petalinux/components/plnx_workspace/device-tree/device-tree/zynq-7000.dtsi`
find the entry for cpu1:
```
                cpu1: cpu@1 {
                        compatible = "arm,cortex-a9";
                        device_type = "cpu";
                        reg = <1>;
                        clocks = <&clkc 3>;
                };
```
edit to comment out 
```
                cpu1: cpu@1 {
                        #compatible = "arm,cortex-a9";
                        #device_type = "cpu";
                        #reg = <1>;
                        #clocks = <&clkc 3>;
                };
```
next page down to the bottom and edit the ptm entry for cpu1:
```
                ptm@f889d000 {
                        compatible = "arm,coresight-etm3x", "arm,primecell";
                        reg = <0xf889d000 0x1000>;
                        clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
                        clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
                        cpu = <&cpu1>;
```
edit:
```
                ptm@f889d000 {
                        compatible = "arm,coresight-etm3x", "arm,primecell";
                        reg = <0xf889d000 0x1000>;
                        clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
                        clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
                        cpu = <&cpu0>;
```
NOTE: it may make the most sense to comment out this whole ptm section, but this is what was suggested on xilinx forums.

Now rerun:
- `petalinux-build`
followed by
- `petalinux-package --boot --u-boot --fpga --kernel --force`
- `petalinux-package --wic`
-  find sd card image under images/linux/petalinux-sdimage.wic and burn it to microsd card using a program like balena etcher.

make sure mode jumper is in place, insert sd card, and watch console output while looking at UART output via COM port on windows set to 115200 and if needed, press SRST to see output from beginning of boot. You should land at the console login once it's done booting up:
```
PetaLinux 2023.1+release-S05010539 petalinux ttyPS0
petalinux login: petalinux
``` 

## adding apps to linux

- nano
	- search for existing app's bitbake resipe:
		- `petalinux-devtool find-recipe nano`
	- add `CONFIG_nano` to `project-spec/meta-user/conf/user-rootfsconfig` file
	- `petalinux-config -c rootfs` user-packages>nano(check)
	- `petalinux-build`
	- `petalinux-package --boot --u-boot --fpga --kernel --force`
	- `petalinux-package --wic`

