echo "************************ Performing update ************************"
apt-get update
echo " "
echo "*** Done ***"
echo " "

echo "****************** Installing XFCE4 environment ******************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies -y
apt-get install lightdm -y
dpkg-reconfigure lightdm
echo " "
echo "*** Done ***"
echo " "

echo "****************** Enabling and Setting up autologin, files names 'lightdm.conf' and 'lightdm-autologin' ******************"
echo " "
echo "********* backup files names 'lightdm.conf' and 'lightdm-autologin' *********"
mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
echo "********* copy and resaved files names 'lightdm.conf' and 'lightdm-autologin' *********"
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
echo " "
echo "*** Done ***"
echo " "

echo "****************** Setting up file 'interafces' ******************"
echo " "
echo "********* backup file name 'interfaces' *********"
mv /etc/network/interfaces /etc/network/interfaces.bak
echo "********* copy and resaved file name 'interfaces' *********"
cp interfaces /etc/network/interfaces
echo " "
echo "*** Done ***"
echo " "
shutdown now

echo "****************** Setting up file 'wpa_supplicant.conf' ******************"
echo " "
echo "file is not exist... creating"
cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
echo " "
echo "*** Done ***"
echo " "

echo "****************** Installing Mosh(sshd_config) ******************"
apt-get install mosh -y
echo " "
echo "*** Done ***"
echo " "

echo "****************** Setting up file 'sshd_config' ******************"
echo " "
echo "********* backup file name 'sshd_config' *********"
mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
echo "********* copy and resaved file name 'sshd_config' *********"
cp sshd_config /etc/ssh/sshd_config
echo " "
echo "*** Done ***"
echo " "


echo "****************** Installing Wifite ******************"
apt-get install wifite
echo " "
echo "*** Done ***"
echo " "

echo "****************** Installing Websploit ******************"
apt-get install websploit
echo " "
echo "*** Done ***"
echo " "

echo "****************** Installing hcxtools ******************"
apt-get install hcxtools -y
echo " "
echo "*** Done ***"
echo " "

echo "****************** Installing hcxdumptool ******************"
apt-get install hcxdumptool -y
echo " "
echo "*** Done ***"
echo " "

echo "****************** Setting up files 'auto-rush' and 'auto-silent' ******************"
echo " "
echo "Copy files 'auto-rush' and 'auto-silent' "
cp auto-rush.sh /home/kali/auto-rush.sh
cp auto-silent.sh /home/kali/auto-silent.sh
echo "chmod 775 for 'auto-rush' and 'auto-silent'"
chmod 775 /home/kali/auto-rush.sh
chmod 775 /home/kali/auto-silent.sh
echo " "
echo "done..."
echo " "

echo "************************ End script... shutdown now ************************"
echo " "
