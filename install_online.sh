#!/bin/bash
# usage: ./online_bootstrap.sh
# set -x
set -e # 有错误则退出

# 导入函数
source common_functions.sh

### 下载配置
# 配置远程仓库地址
repo_url='https://github.com/changmu/_qzg.git'
cd /tmp
rm -rf _qzg
git clone $repo_url

### 安装配置
cd _qzg
InstallConfig
cd $HOME/.qzg # 确保该目录存在
# 注册配置
RegistConfig 'source $HOME/.qzg/init.sh'

echo "$0 done."