#!/bin/bash
echo "Enter folder name:"
read namef
echo "Enter time work:"
read timew
echo " "
echo "HashCat Start!"
sudo systemctl stop NetworkManager.service
sudo systemctl stop wpa_supplicant.service
echo "hcxdumptool run..."
sudo hcxdumptool -i wlan1 -o dumpfile.pcapng --active_beacon --tot=$timew --enable_status=15
echo "hcxdumptool done..."
echo " "
sudo systemctl start wpa_supplicant.service
sudo systemctl start NetworkManager.service
echo "hcxpcapngtool start..."
sudo hcxpcapngtool -o hash.hc22000 -E essidlist -D mac --csv=csvd dumpfile.pcapng
echo "hcxpcapngtool done..."
echo " "
echo "Create Folder and move files to folder..."
sudo mkdir $namef
mv -v /home/kali/dumpfile.pcapng /home/kali/$namef
mv -v /home/kali/hash.hc22000 /home/kali/$namef
mv -v /home/kali/essidlist /home/kali/$namef
mv -v /home/kali/mac /home/kali/$namef
mv -v /home/kali/csvd /home/kali/$namef
echo "done..."
echo " "
echo "HashCat Done"
echo " "
echo "shutdown now"
sudo shutdown now