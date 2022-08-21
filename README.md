## 🌐 Other languages
#### [English](https://github.com/linglaoda/Openvpn-deployment/tree/main/English-Readme)

***

# Centos Openvpn快速部署脚本
#### 目前已在 Centos7,Centos8 系统中测试，均可正常运行
##### ⚠ 因Ubuntu系统与Centos系统安装过程存在出入，故本脚本无法用于Ubuntu
</br>

***

</br>

# ✨ 安装&卸载
## 🔮安装
### CentOS
````
wget -N https://raw.githubusercontent.com/linglaoda/Openvpn-deployment/main/install-centos.sh && bash install-centos.sh
````

> 如服务器无法访问Github raw,您可以将脚本手动复制至服务器

### 注意：如在安装openvpn时没有打开系统防火墙，可能会造成vpn无法访问外网的情况，故建议在运行脚本前执行： systemctl start firewalld 打开系统防火墙
</br>

***

</br>

## ❌卸载
### Centos
````
yum -y remove epel-release && yum -y remove openvpn easy-rsa && rm -rf /etc/openvpn
````

> ❕卸载后所有有关于Openvpn的服务均无法使用,请谨慎操作
# 

</br>

***

</br>

# 🌠部署视频
##### 涉及到VPN内容,B站等其他国内视频网站不允许上传,去Youtube看吧,委屈大家了
#### Youtube : https://youtu.be/ksEo3UvHxsI
#### 正在申诉B站那边的视频~~估计够呛~~

</br>

***

</br>

# 🌌Other
##### Openvpn官方网站：https://openvpn.net/
##### 官方下载：https://openvpn.net/vpn-client/
##### 我的博客：https://iling.cool
