#!/bin/bash

fdisk -l
cat /proc/partitions
mount /dev/mmcblk1p1 /mnt/sd
cat /mnt/sd/sdnew.txt
umount /mnt/sd

