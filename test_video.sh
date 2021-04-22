#!/bin/sh

echo "use http://192.168.2.183:8080/javascript_simple.html to view camera data"

cd ~/mjpg-streamer/mjpg-streamer-experimental

./mjpg_streamer -i "./input_uvc.so -d /dev/video0 -r 1920x1080 -f 30 -q 90 -n" -o "./output_http.so -p 8080 -w ./www"
