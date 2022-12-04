#!/bin/sh
sudo su
#apt 
cp ./box/sources.list /etc/apt/sources.list
apt update
apt -y install gdb g++ binutils wine  
#vim
cp ./box/vimrc /etc/vim/vimrc

#pwntools
sudo apt install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

apt install binutils
pip3 install pwntools
#-m32
apt-get install ia32-libs
#gdb
git clone https://github.com/scwuaptx/Pwngdb.git ~/
git clone https://github.com/longld/peda.git ~/
cp ~/Pwngdb/.gdbinit ~/.gdbinit
#pinyin
apt -y install ibus ibus-pinyin
ibus-setup
echo "#################################################################"
echo "#please config pinyin"
echo "#https://blog.csdn.net/ResumeProject/article/details/126464864"
echo "#this blog can help you"
echo "#################################################################"
