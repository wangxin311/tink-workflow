#!/bin/sh
  
docker build -t 192.168.1.1/ubuntu:base 00-base/
docker push 192.168.1.1/ubuntu:base
docker build -t 192.168.1.1/disk-wipe:v101 01-disk-wipe/ --build-arg REGISTRY=192.168.1.1
docker push 192.168.1.1/disk-wipe:v101
docker build -t 192.168.1.1/disk-partition:v101 02-disk-partition/ --build-arg REGISTRY=192.168.1.1
docker push 192.168.1.1/disk-partition:v101
docker build -t 192.168.1.1/install-root-fs:v101 03-install-root-fs/ --build-arg REGISTRY=192.168.1.1
docker push 192.168.1.1/install-root-fs:v101
docker build -t 192.168.1.1/install-grub:v101 04-install-grub/ --build-arg REGISTRY=192.168.1.1
docker push 192.168.1.1/install-grub:v101

