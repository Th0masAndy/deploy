#!/bin/bash

# 添加环境变量到~/.bashrc
echo "export http_proxy=http://127.0.0.1:1089" >> ~/.bashrc
echo "export https_proxy=http://127.0.0.1:1089" >> ~/.bashrc

# 配置git代理
git config --global http.proxy $http_proxy
git config --global https.proxy $https_proxy

echo "Git proxy configuration has been updated."

source ~/.bashrc

cd trojan-go
./run.sh

echo "Try to access Google"

curl www.google.com


