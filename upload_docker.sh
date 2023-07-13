#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockernamespace=manhnguyen308
dockerpath=project-ml-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat my_password.txt | docker login --username $dockernamespace --password-stdin
image_project_ml=$(docker image list --filter=reference="$dockerpath:1.0" | grep "$dockerpath" | xargs)
echo $image_project_ml

image_info=$(docker image list | grep "$dockerpath" | xargs)
image_tag=$(echo "$image_info" | cut -f 2 -d " ")
image_id=$(echo "$image_info" | cut -f 3 -d " ")

echo $image_id
echo $image_tag

docker image tag "$image_id" "$dockernamespace/$dockerpath:$image_tag"
#docker image list --filter=reference="$docker_path"

# Step 3:
# Push image to a docker repository
docker image push "$dockernamespace/$dockerpath:$image_tag"