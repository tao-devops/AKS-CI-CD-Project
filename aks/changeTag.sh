#!/bin/bash
sed -i "s/tagVersion/$(more ver)/g"  backend-deployment.yaml
