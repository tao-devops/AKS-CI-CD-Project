#!/bin/bash
sed "s/tagVersion/$(more ver)/g" backend-deployment.yaml > node-app-pod.yml
