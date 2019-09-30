#!/bin/bash

docker build -t brittlejf/utils:latest .

read -p "Push image? (y/n): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  docker push brittlejf/utils:latest
fi
