# blog1997-docker

## 项目介绍
![coverage](https://img.shields.io/codecov/c/github/youLookLikeDelicious/blog1997)
[![codecov](https://codecov.io/gh/youLookLikeDelicious/blog1997-api/branch/master/graph/badge.svg?token=4GY5UED0WI)](https://codecov.io/gh/youLookLikeDelicious/blog1997-api)
[![license](https://img.shields.io/github/license/youLookLikeDelicious/blog1997-docker)](https://github.com/youLookLikeDelicious/blog1997-docker/blob/main/LICENSE)
![introduce](https://img.wenhairu.com/images/2023/01/06/7pe0S.png)

Blog1997是一个前后端分离的博客系统。前端使用Nuxt，实现vue的服务端渲染（ssr）。后端使用Laravel + mysql + redis进行开发。

## 项目管理员界面演示

[![Watch the video](https://raw.github.com/GabLeRoux/WebMole/master/ressources/WebMole_Youtube_Video.png)](http://go.plvideo.cn/front/video/preview?vid=43876a053a5729ff357674c4390011c9_4)

## 安装

需要在操作系统上安装Docker.  
建议在生产环境中,使用Docker secrets来管理敏感的数据,比如用户名和密码等.  
首先将.env.example复制成.env  

### Docker compose

```bash
docker compose up -d --remove-orphans
```

### Docker swarm

```bash
docker stack deploy -c compose.yml blog1997
```

现在,就可以通过 **http://localhost** 访问应用程序  
默认用户名: admin@test.com  
默认密码: admin123  

## 配置

### APP_KEY

APP_KEY用于session和其他数据的加密,如果没有在.env中指定,启动容器后,会自动生成一个APP_KEY.可以通过 **docker log container_id** 命令查看生成的APP_KEY,然后放在.env环境变量里,以便后续更新使用.

### MASTER_EMAIL

初始化的超级管理员邮箱,仅在第一次初始化的时候生效,默认admin@test.com  
