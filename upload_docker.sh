#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=manhnguyen308/project-ml-microservice:v1.0.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat my_password.txt | docker login --username $dockernamespace --password-stdin
docker tag project-ml-microservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath