sudo apt-get update
sudo apt-get install xserver-xorg-video-dummy
sudo apt-get install -y xfce4 xfce4-goodies
sudo apt-get install -y tightvncserver

# make sure there is no firewall blocking the vncserver
sudo ufw allow 5901 5900

vncserver
