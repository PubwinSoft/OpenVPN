
## 🌐 其他语言
#### [简体中文](https://github.com/linglaoda/Openvpn-deployment)

***

# Centos Openvpn quick deploy script
#### It has been tested in Centos7 and Centos8 systems, and they can run normally
##### ⚠ Since Ubuntu uses apt instead of yum, this script cannot be used in Ubuntu system

***

# ✨ Install & Uninstall
## 🔮Install
### Copy the following command to the terminal and run:
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install.sh && bash install.sh
````
> If the server cannot access Github raw, you can manually copy the script to the server
***


## ❌Uninstall

````
yum -y remove epel-release && yum -y remove openvpn easy-rsa
````
> ❕ All services related to Openvpn cannot be used after uninstallation, please operate with caution
#
***

# 🌠Deployment video
#### Doing...

***

# 🌌Other
##### Openvpn official website: https://openvpn.net/
##### Official download: https://openvpn.net/vpn-client/
##### Mine Blog：bingling.me
