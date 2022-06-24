#!/usr/bin/env bash

# Step 1
# Run the Docker Hub container with kubernetes
kubectl apply -f deployment_project.yaml
kubectl expose deployment project-4 --port=80 --name=service-project-4
# Step 2:
# List kubernetes pods
kubectl get pods
# Step 3:
# Forward the container port to a host
kubectl expose deployment project-4 --type=LoadBalancer --port=9000 --target-port=80
