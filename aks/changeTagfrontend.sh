#!/bin/bash
sed "s/tagVersion/$1/g" frontend-deployment.yaml > node-app-pod.yml
