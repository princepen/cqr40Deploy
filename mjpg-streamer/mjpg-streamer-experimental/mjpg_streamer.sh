#!/bin/sh

rm /root/lpr/*.jpg

/root/mjpg-streamer/mjpg-streamer-experimental/mjpg_streamer \
-i "/root/mjpg-streamer/mjpg-streamer-experimental/input_uvc.so -d /dev/video0 -n -f 30 -r 1920x1080" \
-o "/root/mjpg-streamer/mjpg-streamer-experimental/output_file.so -d 250 -f /root/lpr"

