apt-get install -y linux-image-virtual grub2
cd /opt
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.3/linux-image-4.9.3-040903-generic_4.9.3-040903.201701120631_amd64.deb

dpkg -i linux-image-4.9*.deb

# apt-get purge -y
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf

sysctl -p

#dpkg -l|grep linux-image

apt-get purge -y apt-get purge -y linux-image-4.8*
reboot
