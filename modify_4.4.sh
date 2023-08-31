#!/bin/sh
#可定义功能参考https://github.com/minax007/padavan-4.4/blob/main/trunk/configs/templates/MI-R4A.config

################################################################################################
#因不同型号配置功能不一样，所以先把配置项删除，如果你自己要添加其他的，也要写上删除这一条，切记！！！
################################################################################################
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config #删除配置项MENTOHUST
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' .config #删除配置项SCUTCLIENT
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' .config #删除配置项SS plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' .config #删除配置项SS server
sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' .config #删除配置项DNSFORWARDER
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d' .config #删除配置项阿里DDNS
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME/d' .config #删除配置项ADGUARDHOME
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS=y/d' .config #删除配置项smartdns
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=y/g' .config
######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> .config #MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> .config #SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y" >> .config #SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> .config # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=y" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >> .config #DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_XRAY=n" >> .config #集成xray执行文件  ~4.5M
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >> .config #集成v2ray执行文件
echo "CONFIG_FIRMWARE_INCLUDE_DDNSTO=n" >> .config #ddnsto  ~0.5M
echo "CONFIG_FIRMWARE_INCLUDE_ALDRIVER=n" >> .config  #阿里云盘  ~3m
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y" >> .config #zerotier ~1.3M
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> .config #aliddns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=y" >> .config #smartdns
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >> .config
#########################################################################################
#自定义添加其它功能请参考源码configs/templates/目录下的config文件。按照上面的格式添加即可
#格式如下：
#sed -i '/自定义项/d' .config
#echo "自定义项=y" >> .config
#########################################################################################