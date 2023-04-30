#!/bin/bash
set +e
clear
echo linux 刷机工具箱 安装脚本
echo
echo 项目更新地址:https://github.com/dabao1955/flash-tool-linux,欢迎star
echo 这是一份许可协议
echo 
echo
wget https://raw.githubusercontent.com/dabao1955/flash-tool-linux/eula/eula >log.txt
cat eula
sleep 20s
read -s -n1 -p "按任意键继续 ... "
clear
if [ -f /usr/bin/apt ]
then
echo 正在刷新软件源列表
sudo apt update >log.txt
else
echo 本项目目前只支持debian GNU/Linux极其衍生发行版，未来将支持更多系统
exit 1
fi

echo 正在检查依赖
if [ -f /usr/bin/python3 ]
then
echo python3依赖已安装
else
echo 正在安装依赖:python3
sudo apt install python3 -y >log.txt || echo  python3无法安装 ; exit 1 
fi

if [ -f /usr/bin/git ]
then
echo git依赖已安装
else
echo 正在安装依赖:git
sudo apt install git -y >log.txt || echo  git无法安装 ; exit 1 
fi

if [ -f /usr/bin/unzip ]
then
echo unzip依赖已安装
else
echo 正在安装依赖:unzip
sudo apt install unzip -y >log.txt ||  echo unzip无法安装 ; exit 1 
fi

if [ -f /usr/bin/adb ]
then
echo adb依赖已安装
else
echo 正在安装依赖:adb
sudo apt install adb -y >log.txt || echo  adb无法安装 ; exit 1 
fi

if [ -f /usr/bin/fastboot ]
then
echo fastboot依赖已安装
else
echo 正在安装依赖:fastboot
sudo apt install fastboot -y >log.txt ||  echo fastboot无法安装 ; exit 1 
fi

if [ -f /usr/bin/pip3 ]
then
echo pip3依赖已安装
else
echo 正在安装依赖:pip3
sudo apt install python3-pip -y >log.txt ||  echo pip3无法安装 ; exit 1 
fi

if [ -f /usr/bin/brotli ]
then
echo brotli依赖已安装
else
echo 正在安装依赖:brotli
sudo apt install brotli -y >log.txt || pip3 install brotli >log.txt || echo  brotli无法安装 ; exit 1 
fi

echo 依赖安装完成
clear
echo 即将安装flash-tool-linux到/usr/share/flash-tool-linux
read -s -n1 -p "按任意键继续 ... "
echo 正在安装
sudo git clone --recursive https://github.com/dabao1955/flash-tool-linux /usr/share/flash-tool-linux >log.txt || echo 安装失败 ; exit 1 
sudo ln -s /usr/share/flash-tool-linux/init /usr/local/bin/flash-tool-linux || echo 安装失败 ; exit 1 
sudo ln -s /usr/share/flash-tool/linux/init /usr/local/bin/ftl || echo 安装失败 ; exit 1 
sudo chmod 755 /usr/local/bin/flash-tool-linux || echo 安装失败 ; exit 1 
sudo chmod 755 /usr/local/bin/ftl || echo 安装失败 ; exit 1 
echo 安装完成，可使用ftl或者flash-tool-linux来启动 
rm eula
exit 0
