#!/bin/bash
apt-get -y update
apt-get -y install firefox
apt-get -y install git
apt-get -y install python3 python3-pip
pip3 install selenium
pip3 install pyvirtualdisplay
apt-get -y install xvfb
cd /root
git clone https://trankhanhtoan96:Trankhanhtoan29101996@github.com/trankhanhtoan96/selenium.git
apt-get -y update
apt-get -y install vnc4server
apt-get -y install xfce4 xfce4-goodies
echo "Set VNC pass:"
vncpasswd
vncserver :2
vncserver -kill :2
echo "exec /usr/bin/startxfce4 &" >> /home/ubuntu/.vnc/xstartup
vncserver :2 -geometry 1366x768 -depth 24
echo "=========DONE=========="
echo "=========by-tkt=========="