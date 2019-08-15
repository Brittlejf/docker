#!/bin/bash

docker build -t brittlejf/docker/utils:latest .
docker tag brittlejf/docker/utils registry.gitlab.com/brittlejf/docker/utils

read -p "Push image? (y/n): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  docker push registry.gitlab.com/brittlejf/docker/utils:latest
fi
