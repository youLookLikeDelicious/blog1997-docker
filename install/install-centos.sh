#!/bin/bash
set -e

if [ -x "$(command -v docker)" ]
then
  echo Docker已安装
else
  echo 安装Docker...
  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
  sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
  yum install -y yum-utils
  yum makecache && yum update -y
  yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
  yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

  systemctl enable docker
  systemctl start docker
  echo Docke安装完成
fi

if [ -x $(command -v git)"" ]
then
  echo git已安装
else
  echo 安装Git...
  yum -y install git
fi

git clone https://github.com/youLookLikeDelicious/blog1997-docker.git
cd ./blog1997-docker && cp .env.example .env && docker compose up -d

echo 启动完成