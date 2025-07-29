#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
service docker start
docker run -d -p 9092:9092 bitnami/kafka:latest
