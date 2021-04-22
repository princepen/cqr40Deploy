#!/bin/sh

rm /root/lpr/*000000000.jpg
rm /root/lpr/*000000001.jpg

time2=$(date "+%Y%m%d_%H%M%S")
echo "bak img, date=" $time2

mkdir /mnt/sd/picbak/$time2

cp /root/lpr/*.jpg /mnt/sd/picbak/$time2/
cp /root/lpr/pythonresult.txt /mnt/sd/picbak/$time2/

