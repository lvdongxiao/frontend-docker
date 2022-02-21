FROM node:16

ENV DEBIAN_FRONTEND noninteractive

# CST zone
#ENV TZ=Asia/Shanghai
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN apt-get clean \
    && apt-get update \
    && apt-get install -y git vim zip unzip zlibc curl apt-transport-https

# ssh config
COPY ssh/* /root/.ssh/
RUN chmod 0600 /root/.ssh/id_rsa

WORKDIR /var/www/html
