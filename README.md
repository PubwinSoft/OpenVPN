## 🌐 Other languages
#### [English](https://github.com/linglaoda/Openvpn-deployment/tree/main/English-Readme)

***

# Centos Openvpn快速部署脚本
#### 目前已在Centos7及Centos8系统中测试，均可正常运行
##### ⚠ 因Ubuntu使用的是apt而非yum,故本脚本无法在Ubuntu系统中使用

***

# ✨ 安装&卸载
# 一、安装
## 使用 Github raw 方式下载脚本（推荐）
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install.sh && bash install.sh
````
## 使用 Jsdelivr CDN 下载脚本（仅在服务器无法访问Github时使用）
````
wget -N https://cdn.jsdelivr.net/gh/linglaoda/Openvpn-deployment@main/install.sh && bash install.sh
````
> 以上命令按照实际情况二选一运行即可，获取到的脚本都是一样的，只不过是下载的途径不一样
***
# 二、卸载

````
yum -y remove epel-release && yum -y remove openvpn easy-rsa
````
> 卸载后所有有关于Openvpn的服务均无法使用,请谨慎操作
# 
***

# 🌠部署视频
#### 在做了...

***

# 🌌Other
##### Openvpn官方网站：https://openvpn.net/
##### 官方下载：https://openvpn.net/vpn-client/
