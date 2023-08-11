#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub


docker_id="juanlopez0114"
image_name="flask-prediction-app4"
dockerpath="$docker_id/$image_name"

# Authenticate and tag the image
echo "Docker ID and Image: $dockerpath"
sudo docker login --username=juanlopez0114
sudo docker tag flask-prediction-app4:latest $dockerpath

# Push the image to Docker Hub
sudo docker push $dockerpath

# Print a success message
echo "Image uploaded to Docker Hub: $dockerpath"