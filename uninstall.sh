yum remove epel-release
yum remove openvpn easy-rsa

systemctl start openvpn-server@server
systemctl disable openvpn-server@server

rm -rf /etc/openvpn