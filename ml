#!/bin/bash
cd /root
clear
sleep 1
echo -e "====================================================================================================================="
echo
echo -e "\t 实用脚本分享 一键ssr op综合脚本"
echo
echo -e "\t 本脚本由西门吹雪、Dios、花下砂、胡歌、阿哇、普洱、幸福简单等妖友提供的脚本修改整合而成"
echo
echo -e "====================================================================================================================="
echo
echo -e "\033[36m 1.一键搭建BBR（centos 不支持） \033[0m"
echo
echo -e "\033[36m 2.一键搭建Aria2\033[0m"
echo
echo -e "\033[36m 3.搭建西门吹雪ssr脚本 \033[0m"
echo
echo -e "\033[36m 4.搭建多用户SSR \033[0m"
echo
echo -e "\033[36m 5.搭建gost\033[0m"
echo
echo -e "\033[36m 6.搭建vpns\033[0m"
echo
echo -e "\033[36m 7.搭建gost监控\033[0m"
echo
echo -e "\033[36m 8.搭建缤纷云流控\033[0m"
echo
echo -e "\033[36m 9.搭建有古怪流控\033[0m"
echo
echo -e "\033[36m 10.搭建爱云免流控（支持CentOS 6.x） \033[0m"
echo
echo -e  "\033[36m 请选择 [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 ] 进行下一步安装！\033[0m
 
 >请选择安装类型: "
read az
  case $az in
    1) wget -q https://github.com/liehuolianyu/test/raw/master/bbr && bash bbr
       ;;
    2) wget -q https://github.com/liehuolianyu/test/raw/master/aria2 && bash aria2
       ;;
    3) wget -q https://github.com/liehuolianyu/test/raw/master/SSR && bash SSR
       ;;
    4) wget https://github.com/liehuolianyu/test/raw/master/ssr2.zip && unzip ssr2.zip && bash ssr2
       ;;
	5) wget -q https://github.com/liehuolianyu/test/raw/master/gost.sh && bash gost.sh
	   ;;
	6) wget -q https://github.com/liehuolianyu/test/raw/master/sevpn && bash sevpn
	   ;;
	7) wget -q https://github.com/liehuolianyu/test/raw/master/gostjk.sh && bash gostjk.sh
	   ;;
	8) wget -q https://github.com/liehuolianyu/test/raw/master/bfy && bash bfy
	   ;;
	9) wget -q https://github.com/liehuolianyu/test/raw/master/ygg && bash ygg
       ;;	
	10) wget -q https://github.com/liehuolianyu/test/raw/master/aym && bash aym
       ;;	
    *)  echo -e "\033[31m 错误：只能选择[ 1 , 2 , 3, 4 , 5 , 6 , 7 , 8 , 9 , 10 ]！！\033[0m"
       ;; 
  esac
