#!/bin/bash

# 添加环境变量到~/.bashrc
echo "export HTTP_PROXY=http://127.0.0.1:1089" >> ~/.bashrc
echo "export HTTPS_PROXY=http://127.0.0.1:1089" >> ~/.bashrc

# 配置git代理
git config --global http.proxy $HTTP_PROXY
git config --global https.proxy $HTTPS_PROXY

echo "Git proxy configuration has been updated."

source ~/.bashrc

tar -zxvf trojan-go.tar.gz -C ./
cd trojan-go
./run.sh

echo "Try to access Google"

curl www.google.com


