#!/bin/bash

docker build -t brittlejf/ansible:latest .

read -p "Push image? (y/n): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  docker push brittlejf/ansible:latest
fi
