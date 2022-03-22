# Centos Openvpn快速部署脚本
## 2022/3/23 最后更新
#### 目前已在Centos7及Centos8系统中测试，均可正常运行
### ⚠ 因Ubuntu使用的是apt而非yum,故本脚本无法在Ubuntu系统中使用
# 
# 一键安装命令
````
wget https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install.sh && bash install.sh
````
## 如您要部署的服务器无法连接至GitHub,您可以使用
````
wget https://cdn.jsdelivr.net/gh/linglaoda/Openvpn-deployment@main/install.sh && bash install.sh
````
# 
#### 为了方便兼容，sh脚本中指定了easy-rsa安装的版本，该操作不会影响到安全问题
