#!/bin/bash
HERE=$(dirname "$0")

systemctl stop docker

mkdir /etc/systemd/system/docker.service.d
cp -rp "$HERE/conf/etc/systemd/system/docker.service.d/custom-daemon-opts.conf

systemctl daemon-reload

source tmpfs.sh
source swap.sh

systemctl start docker
./start-webservers.sh 2000 0
