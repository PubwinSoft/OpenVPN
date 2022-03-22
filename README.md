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

## 安装过程中有几处需要单击回车或输入yes，在相关命令执行前均会有提示，例如
````
Tips:请单击回车键

Note: using Easy-RSA configuration from: /etc/openvpn/easy-rsa/vars
Using SSL: openssl OpenSSL 1.0.2k-fips  26 Jan 2017
Generating a 2048 bit RSA private key
...............................+++
..............+++
writing new private key to '/etc/openvpn/easy-rsa/pki/easy-rsa-2581.KEn4ar/tmp.4if4TQ'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Common Name (eg: your user, host, or server name) [client1]:（回车）

Keypair and certificate request completed. Your files are:
req: /etc/openvpn/easy-rsa/pki/reqs/client1.req
key: /etc/openvpn/easy-rsa/pki/private/client1.key
````
````
请输入yes

Note: using Easy-RSA configuration from: /etc/openvpn/easy-rsa/vars
Using SSL: openssl OpenSSL 1.0.2k-fips  26 Jan 2017


You are about to sign the following certificate.
Please check over the details shown below for accuracy. Note that this request
has not been cryptographically verified. Please be sure it came from a trusted
source or that you have verified the request checksum with the sender.

Request subject, to be signed as a server certificate for 825 days:

subject=
    commonName                = server1


Type the word 'yes' to continue, or any other input to abort.
  Confirm request details: （输入yes）
Using configuration from /etc/openvpn/easy-rsa/pki/easy-rsa-2509.CDJngD/tmp.kRVrOY
Check that the request matches the signature
Signature ok
The Subject's Distinguished Name is as follows
commonName            :ASN.1 12:'server1'
Certificate is to be certified until Jun 24 15:34:41 2024 GMT (825 days)

Write out database with 1 new entries
Data Base Updated

Certificate created at: /etc/openvpn/easy-rsa/pki/issued/server1.crt
````
# 
#### 为了方便兼容，sh脚本中指定了easy-rsa安装的版本，该操作不会影响到安全问题
