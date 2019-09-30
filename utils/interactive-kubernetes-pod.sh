#!/bin/bash

NAMESPACE="$1"
IMAGE="brittlejf/utils"

# Try to get namespace.
kubectl get namespace ${NAMESPACE} &>/dev/null

if [ "$?" -eq 0 ]; then
  # This builds the command without running it.
  RUN_COMMAND="kubectl run interactive-shell --rm -it --namespace=${NAMESPACE} --restart=Never --image=${IMAGE} -- bash"
  # Print command to user for input.
  echo "${RUN_COMMAND}"

  # Check for user input.
  read -p "Run command above? (y/n): " -r
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Run command.
    ${RUN_COMMAND}
  fi
else
  echo "Unable to find namespace: ${NAMESPACE}"
  echo "Make sure you have access to this namespace before trying again."
fi
