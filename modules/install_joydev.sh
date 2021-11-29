#!/bin/bash

KERNEL_VERSION=$(uname -r)
MODINFO=$(modinfo ./joydev/joydev.ko | grep vermagic)
MODULE_VERSION=$(echo $MODINFO | cut -d " " -f 2) 


if [ $KERNEL_VERSION != $MODULE_VERSION ]
then
  echo "Versions incompatible"
  echo ".ko file compiled with " $MODULE_VERSION
  echo "System kernel is " $KERNEL_VERSION
else
  cp ./joydev/joydev.ko /lib/modules/$(uname -r)/kernel/drivers/input
  depmod -a
  echo "JOYDEV loaded"
fi
