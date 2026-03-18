#!/bin/bash
apt-get update -y
apt-get install -y docker.io curl git
systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu

mkdir -p /home/ubuntu/scripts
chown -R ubuntu:ubuntu /home/ubuntu/scripts

