#!/bin/bash
sed "s/tagVersion/$1/g" backend-deployment.yaml > node-app-pod.yml
