#!/usr/bin/env bash


# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
docker_id="juanlopez0114"
image_name="flask-prediction-app4"
dockerpath="$docker_id/$image_name"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $image_name --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $image_name 8000:80

