#!/bin/bash

KERNEL_VERSION=$(uname -r)
MODINFO=$(modinfo ./ch341/ch341.ko | grep vermagic)
MODULE_VERSION=$(echo $MODINFO | cut -d " " -f 2) 


if [ $KERNEL_VERSION != $MODULE_VERSION ]
then
  echo "Versions incompatible"
  echo ".ko file compiled with " $MODULE_VERSION
  echo "System kernel is " $KERNEL_VERSION
else
  cp ./ch341/ch341.ko /lib/modules/$(uname -r)/kernel/drivers/usb/serial
  depmod -a
  echo "CH341 loaded"
fi
