#!/bin/sh

fdisk -l
cat /proc/partitions
mount /dev/sda1 /mnt/usb
cat /mnt/usb/usbnew.txt
umount /mnt/usb

