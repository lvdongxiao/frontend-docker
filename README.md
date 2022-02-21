Frontend Docker 前端Docker
===================

* 此docker-compose.yml启用正式环境, 运行 main 分支
* 正式环境当使用反向代理服务器时,需要修改nginx配置文件的 set_real_ip_from 的值,默认为: 172.16.0.0/16;

### 软件版本

| 软件              | 版本       |
|-----------------|----------|
| Docker          | 20.10.12 |
| Docker-composer | 3.8      |
| Nginx           | 1.20     |
| Node            | 16       |


### Docker 加速

* Aliyun Docker 加速地址: [https://fiax9nc8.mirror.aliyuncs.com](https://fiax9nc8.mirror.aliyuncs.com)
* 设置方法: [http://blog.csdn.net/hubinqiang/article/details/55113706 ](http://blog.csdn.net/hubinqiang/article/details/55113706 )
* 把用户添加到docker组,免去以前用sudo 执行docker命令, 添加成功后要ubuntu要退出重进不使用才生效
```sh
sudo usermod -aG docker ubuntu
```
---

### 安装/更新 在服务器上运行需加 sudo

安装 docker-composer
官方地址：[https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)
```sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
安装 make
```sh
sudo apt-get install build-essential
```
---

### 安装 (必须按步骤操作)

STEP: 1
```sh
docker-compose up 
```

STEP: 2
```sh
make init 
```
---
### 更新

* 更新HTML
```sh
make update
```
* 发布新版本
```sh
make release
```

### Mac开发环境本地运行
docker-compose up --build

### 后台运行环境
* docker-compose up -d
