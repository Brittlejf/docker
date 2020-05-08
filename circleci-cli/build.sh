#!/bin/bash

docker build -t brittlejf/circleci-cli:latest .

read -p "Push image? (y/n): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  docker push brittlejf/circleci-cli:latest
fi
