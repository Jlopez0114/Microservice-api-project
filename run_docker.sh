#!/bin/bash

# Build image and add a descriptive tag
docker build --tag=flask-prediction-app .

# List docker images
docker images

# Run flask app
docker run -p 8000:80 flask-prediction-app
