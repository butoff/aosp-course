FROM ubuntu:18.04

ARG userid
ARG groupid
ARG username

RUN apt update \
 && apt install -y rsync openssl zip unzip

RUN groupadd -g $groupid $username \
 && useradd -m -u $userid -g $groupid $username \
 && echo $username >/root/username

USER $username:$username

WORKDIR /aosp
