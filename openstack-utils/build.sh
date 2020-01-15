#!/bin/bash

# Build image
docker build -t brittlejf/openstack-utils:latest .

read -p "Push image? (y/n): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  docker push brittlejf/openstack-utils:latest
fi

