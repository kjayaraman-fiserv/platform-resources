#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
service docker start
docker run -d -p 80:80 nginx
