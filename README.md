## 🌐 Other languages
#### [English](https://github.com/linglaoda/Openvpn-deployment/tree/main/English-Readme)

***

# Openvpn快速部署脚本
#### 目前已在 Centos7,Centos8及Ubuntu 20.04 LTS 系统中测试，均可正常运行

***

# ✨ 安装&卸载
## 🔮安装
### CentOS
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install-centos.sh && bash install-centos.sh
````
### Ubuntu
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install-ubuntu.sh && bash install-ubuntu.sh
````
> 如服务器无法访问Github raw,您可以将脚本手动复制至服务器
***


## ❌卸载

````
yum -y remove epel-release && yum -y remove openvpn easy-rsa
````
> ❕卸载后所有有关于Openvpn的服务均无法使用,请谨慎操作
# 
***

# 🌠部署视频
#### 在做了...

***

# 🌌Other
##### Openvpn官方网站：https://openvpn.net/
##### 官方下载：https://openvpn.net/vpn-client/
##### 我的博客：bingling.me
