#!/bin/bash
#Junjie自写自用脚本
#程序安装选择
echo "
---------------------------------------------------------
请选择需要安装的测速程序，输入相应序列号回车
---------------------------------------------------------

---------------------------------------------------------

【1】测试上传下载网速程序

【2】全面测速及检测机器配置

【3】SSR一键安装

【4】锐速破解安装

【5】锐速破解卸载

【6】gost一键安装（不带监控）

【7】gost监控脚本下载（仅监控脚本源）

【8】一键gost监控程序安装（gost+监控）

【9】SSR安装多端口（80,8080,53,137）

【10】BBR算法加速+最新内核

【11】端口开放(SSR多端口无网需开放端口)

					有问题告诉我QQ：540245094

---------------------------------------------------------
"
read os
clear

url='http://cdn.yunmaopt.cc'

#测试上传下载网速程序
if test $os == 1 ;then
echo '******正在安装测速程序，请等待几分钟******';
sleep 1
wget ${url}/cesu/speedtest.py;
chmod a+rx speedtest.py;
mv speedtest.py /usr/local/bin/speedtest;
chown root:root /usr/local/bin/speedtest;
echo -e '安装完成：			  [\033[32m  OK  \033[0m]';
sleep 0.5;
echo '******正在执行测速程序******';
speedtest;
echo -e '测速命令：			  [\033[32m  speedtest  \033[0m]';
fi

#全面测速及检测机器配置
if test $os == 2 ;then
echo '******正在安装全面测速程序，请等待几分钟******';
wget ${url}/cesu/bench.sh
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
sleep 1.2;
echo '******正在执行程序******';
bash bench.sh;
fi

#SSR一键安装程序
if test $os == 3 ;then
echo '******正在安装SSR科学上网程序，请等待几分钟******';
sleep 1.2;
wget ${url}/SSR/SSR
bash SSR;
fi

#锐速破解安装程序
if test $os == 4 ;then
echo '******正在安装锐速破解程序，请等待几分钟******';
sleep 1.2;
wget ${url}/ruisu/serverspeeder-all.sh
bash serverspeeder-all.sh;
fi

#锐速破解卸载程序
if test $os == 5 ;then
echo '******正在卸载锐速破解程序，请等待几分钟******'
sleep 1.2;
chattr -i /serverspeeder/etc/apx* && /serverspeeder/bin/serverSpeeder.sh uninstall -f
sleep 0.5;
echo -e '卸载完成：			  [\033[32m  OK  \033[0m]';
fi

#gost一键安装
if test $os == 6 ;then
echo '******正在安装gost程序，请等待几分钟******';
wget ${url}/gost/gost.sh
bash gost.sh
fi

#gost监控脚本下载
if test $os == 7 ;then
echo '******正在下载gost监控脚本，请等待几分钟******';
wget ${url}/gost/gostjk.sh
fi

#一键gost监控程序安装
if test $os == 8 ;then
echo '******正在安装一键gost监控程序，请等待几分钟******'
get_opsy() {
    [ -f /etc/redhat-release ] && awk '{print ($1,$3~/^[0-9]/?$3:$4)}' /etc/redhat-release && return
    [ -f /etc/os-release ] && awk -F'[= "]' '/PRETTY_NAME/{print $3,$4,$5}' /etc/os-release && return
    [ -f /etc/lsb-release ] && awk -F'[="]+' '/DESCRIPTION/{print $2}' /etc/lsb-release && return
}
opsy=$( get_opsy )
if [ "${opsy:0:6}" = "CentOS" ]; then
	echo '检测到您的系统是Centos，自动执行安装程序'
	yum -y install screen
elif [ "${opsy:0:6}" = "Debian" ]; then
echo '检测到您的系统是Debian，自动执行安装程序'
	apt-get install screen
fi
	wget ${url}/gost/gost.sh
	bash gost.sh
	sleep 1.2
	echo 'gost已经安装完成，接下来安装监控脚本，因为编码问题，'
	echo '以下监控内容可能会乱码，看到OK，直接退出即可'
	wget ${url}/gost/gostyj.sh
	bash gostyj.sh
fi

#SSR安装多端口
if test $os == 9 ;then
echo '******正在安装SSR多端口程序，请等待几分钟******'
	wget ${url}/SSR/shadowsocks.json
	cd /etc
	rm shadowsocks.json
	cd /root
	mv shadowsocks.json /etc
	/etc/init.d/shadowsocks restart
	echo '多端口安装完成，默认密码456798'
fi

#BBR算法加速
if test $os == 10;then
echo '******正在安装BBR算法加速，请等待几分钟******'
	wget ${url}/bbr/bbr.sh
	chmod +x bbr.sh
	./bbr.sh
fi

#多端口开放
if test $os == 11;then
echo '******正在开放服务器端口，请等待几分钟******'
	wget ${url}/port/dk
	bash dk
fi


exit 0