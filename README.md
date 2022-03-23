## 🌐 Other languages
#### [English](https://github.com/linglaoda/Openvpn-deployment/tree/main/English-Readme)

***

# Centos Openvpn快速部署脚本
#### 目前已在Centos7及Centos8系统中测试，均可正常运行
##### ⚠ 因Ubuntu使用的是apt而非yum,故本脚本无法在Ubuntu系统中使用

***

# ✨ 安装&卸载
## 🔮安装
### 将如下命令复制至终端并运行：
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install.sh && bash install.sh
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
