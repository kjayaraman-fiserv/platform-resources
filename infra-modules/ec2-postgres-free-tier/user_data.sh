#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
service docker start
docker run -d -p 5432:5432 -e POSTGRES_USER=user -e POSTGRES_PASSWORD=pass postgres:15
