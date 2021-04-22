ifconfig wlan1 up && wpa_supplicant -B -iwlan1 -c /etc/wpa_supplicant.conf && dhclient wlan1 && iw wlan1 link &&  ifconfig
