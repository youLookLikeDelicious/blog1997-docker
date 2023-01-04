#!/bin/bash

if [ -x "$(command -v docker)" ]
then
else
  echo 安装Docker...
  sudo  yum install -y yum-utils
  sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
  sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
  echo Docke安装完成
fi

if [ -x $(command -v git)"" ]
then
else
        echo 安装Git...
  sudo yum -y install git
fi

git clone https://github.com/youLookLikeDelicious/blog1997-docker.git
cd ./docker-docker && docker compose up -d

echo 启动完成