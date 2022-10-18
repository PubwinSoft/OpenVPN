
## 🌐 其他语言
#### [简体中文](https://github.com/linglaoda/Openvpn-deployment/Chinese-readme.md)

***

# Centos Openvpn quick deploy script
#### It has been tested in Centos7, Centos8 systems and can run normally
##### ⚠ This script cannot be used for Ubuntu due to the discrepancy between the installation process of Ubuntu system and Centos system
</br>

***

</br>

# ✨ Install & Uninstall
## 🔮Install
### CentOS
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install-centos.sh && bash install-centos.sh
````

> If the server cannot access Github raw, you can manually copy the script to the server

</br>

***

</br>

## ❌Uninstall
### Centos
````
yum -y remove epel-release && yum -y remove openvpn easy-rsa && rm -rf /etc/openvpn
````

> ❕ All services related to Openvpn cannot be used after uninstallation, please operate with caution
#

</br>

***

</br>

# 🌠Deployment video

### Youtube : https://youtu.be/ksEo3UvHxsI

</br>

***

</br>

# 🌌Other
##### Openvpn official website: https://openvpn.net/
##### Official download: https://openvpn.net/vpn-client/
##### My blog: https://iling.cool
