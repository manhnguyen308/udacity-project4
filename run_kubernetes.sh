#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockernamespace=manhnguyen308
dockerpath=project-ml-microservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project-ml-microservice-kubenetes --image=$dockernamespace/$dockerpath:1.0

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/project-ml-microservice-kubenetes --address 0.0.0.0 5000:5000
