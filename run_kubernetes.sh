#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=manhnguyen308/project-ml-microservice:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project-ml-microservice-kubenetes --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/project-ml-microservice-kubenetes --address 0.0.0.0 5000:5000
