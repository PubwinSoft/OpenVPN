#!/bin/bash

# Code by fuingzu
# Blog：iling.uk
# Project Url：https://github.com/fuingzu/Openvpn-deployment
# 本脚本无法在Ubuntu系统中运行
# This script does not work in Ubuntu system


echo ------配置依赖环境及必备软件包------
echo ------Configure dependent environment and prerequisite software package------


# 关闭selinux
sed -i '/^SELINUX/s/enforcing/disabled/g' /etc/selinux/config
setenforce 0

# 安装epel,openvpn,Easy-RSA
yum -y install epel-release
yum -y install openvpn
yum -y install easy-rsa-3.0.8

# 新建目录
mkdir /etc/openvpn/easy-rsa/
#拷贝文件
cp -r /usr/share/easy-rsa/3/* /etc/openvpn/easy-rsa/
cp -p /usr/share/doc/easy-rsa-3.0.8/vars.example /etc/openvpn/easy-rsa/vars


clear
echo ------登录凭证生成------
echo ------Login Credential Generation------

# cd到Openvpn目录
cd /etc/openvpn/easy-rsa/

echo ---生成CA证书---
echo ---Generate CA certificate---

# 生成CA证书
./easyrsa init-pki

clear
echo ------证书生成------
echo ------certificate generation------
echo ---请单击回车键---
echo ---Please click the enter key---


./easyrsa build-ca nopass

clear
echo ------证书生成------
echo ------certificate generation------
echo ---请单击回车键---
echo ---Please click the enter key---

./easyrsa gen-req server1 nopass

# 签署密钥
clear
echo ------签署密钥------
echo ------ signing key ------
echo ---请输入yes--
echo ---Please enter yes--

./easyrsa sign-req server server1


clear
echo ------证书生成------
echo ------certificate generation------
echo ---请单击回车键---
echo ---Please click the enter key---


# 创建客户端密钥

clear
echo ------证书生成------
echo ------certificate generation------
echo ---请单击回车键---
echo ---Please click the enter key---

./easyrsa gen-req client1 nopass

# 签署密钥
clear
echo ------签署密钥------
echo ------ signing key ------
echo ---请输入yes--
echo ---Please enter yes--


./easyrsa sign-req client client1

clear
echo ------创建其余密钥------
echo ------create remaining keys------

# 创建DH密钥
./easyrsa gen-dh

# 创建TLS认证密钥
openvpn --genkey --secret /etc/openvpn/easy-rsa/ta.key

# 生成CTR密钥
./easyrsa  gen-crl

clear
echo ------复制文件------
echo ------ copy file ------

# 复制Server相关密钥
cp -p pki/ca.crt /etc/openvpn/server/
cp -p pki/issued/server1.crt /etc/openvpn/server/
cp -p pki/private/server1.key /etc/openvpn/server/
cp -p ta.key /etc/openvpn/server/

# 复制Client相关密钥
cp -p pki/ca.crt /etc/openvpn/client/
cp -p pki/issued/client1.crt /etc/openvpn/client/
cp -p pki/private/client1.key /etc/openvpn/client/
cp -p ta.key /etc/openvpn/client/

# 复制DH及CTR证书
cp pki/dh.pem /etc/openvpn/server/
cp pki/crl.pem /etc/openvpn/server/

echo ------获取配置文件并设置防火墙及内核转发------
echo ------Get the configuration file and set the firewall and kernel forwarding------


# cd到server目录
cd /etc/openvpn/server
# 下载配置文件
wget https://cdn.jsdelivr.net/gh/fuingzu/Openvpn-deployment@main/datas/server.conf

# 开启内核转发
echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf
# 立即生效
sysctl -p

# 修改防火墙
firewall-cmd --permanent --add-service=openvpn
firewall-cmd --permanent --add-interface=tun0
firewall-cmd --permanent --add-masquerade
firewall-cmd --permanent --direct --passthrough ipv4 -t nat -A POSTROUTING -s  10.8.0.0/24 -o ens33 -j MASQUERADE
firewall-cmd --reload

# 开机启动
systemctl enable openvpn-server@server
# 启动服务
systemctl start openvpn-server@server

cd /etc/openvpn/client

# 下载client配置文件
wget https://cdn.jsdelivr.net/gh/fuingzu/Openvpn-deployment@main/datas/client.conf

clear

echo ------文件配置------
echo ---IP地址 或域名 配置---
echo -如需使用域名连接，请确保域名已解析至服务器-
echo ------File configuration------
echo ---IP address or domain name configuration---
echo -To connect using a domain name, make sure the domain name is resolved to the server-



echo 请输入您的服务器外网IP *或域名*  Enter IP or domain name:
read IP
echo IP或域名为 IP or domain name is:$IP

# 替换配置文件中的#IP#
sed -i "s/#IP#/$IP/g" client.conf

echo 配置文件已写入
echo configuration file written

# 修改文件名
mv client.conf client.ovpn

# cd到指定目录
cd /etc/openvpn
# 压缩文件
tar -zcvf client.tar.gz client/

clear

echo ------安装完毕------
echo  
echo 服务已设置开机自启
echo  
echo 您可以使用 sz /etc/openvpn/client.tar.gz 命令将VPN连接文件传输到您的电脑 *仅xshell支持*
echo 或手动下载位于: /etc/openvpn/client.tar.gz 的文件，此压缩包包含.ovpn文件及密钥证书文件。
echo Openvpn官网: https://www.openvpn.net 您可以在这里下载Openvpn客户端
echo 直接将 client.tar.gz 文件解压后将client.ovpn导入Openvpn客户端即可，请不要将压缩包中的ctr,key文件删除,这些文件相当于您的vpn连接密码,使用ovpn文件时会自动调用，所以请将压缩包内的文件解压到同一个文件夹中
echo  
echo ------提示------
echo 若无法连接，切确保您的路由器端口转发配置正确，或外置防火墙已放通1194端口

echo  
echo  
echo ------successful------
echo  
echo The service has been set to start automatically at boot
echo  
echo You can use the sz /etc/openvpn/client.tar.gz command to transfer the VPN connection file to your computer *supported by xshell only*
echo or manually download the file located at: /etc/openvpn/client.tar.gz, this compressed package contains the .ovpn file and the key certificate file.
echo Openvpn official website: https://www.openvpn.net You can download the Openvpn client here
echo directly decompress the client.tar.gz file and import client.ovpn into the Openvpn client. Please do not delete the ctr and key files in the compressed package. These files are equivalent to your vpn connection password. When using the ovpn file, the It is called automatically, so please unzip the files in the compressed package to the same folder
echo
echo ------ prompt ------
echo If you can't connect, make sure your router's port forwarding configuration is correct, or the external firewall has allowed port 1194
