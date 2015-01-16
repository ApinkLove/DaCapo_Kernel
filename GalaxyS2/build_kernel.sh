#!/bin/bash
rm ../modules *.tar
mkdir ../modules
export ARCH=arm
export CROSS_COMPILE=../../arm-eabi-4.4.3/bin/arm-eabi-
make mrproper
make u1_kor_skt_defconfig
make -j4
find . -name "*.ko" -exec mv {} ../modules/ \;
make mrproper
cp -a ../modules/* ./usr/initramfs/lib/modules/
make u1_kor_skt_defconfig
make -j4
mv ./arch/arm/boot/zImage ./zImage
tar -cvf DaCapo_[$(date -u +%m)-$(date -u +%d)-$(date -u +%S)].tar zImage
