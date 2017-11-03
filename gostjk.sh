while :; do
pid=`pidof "gostproxy"`
echo $pid
if [ "$pid" = "" ]; then
  echo "程序未运行，正在开启程序";
  gost stop
  gost start
elif [ "$pid" = "$pid" ]; then
  echo "程序正在运行中，请直接退出服务器。"
  echo -e '监控安装完成：			  [\033[32m  OK  \033[0m]';
fi
gost start >> /root/jiankong
date >> /root/jiankong
sleep 1800
done
