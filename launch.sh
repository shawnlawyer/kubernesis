#!/bin/bash

minikube delete
minikube start --driver=hyperkit
screen -dmS minikube_dashboard bash -c 'minikube dashboard; exit;'
MINIKUBE_URL=http://$(minikube ip)
minikube addons enable ingress
eval $(minikube docker-env)
docker build ./nginx-alpine -t nginx-alpine:1.0 -f nginx-alpine/Dockerfile
kubectl apply -f k8s
echo "Cluster Started"
for i in {1..60}
do
    if curl -s --head  --request GET ${MINIKUBE_URL} | grep "200" > /dev/null
    then
        echo "Nginx Running"
        sleep 10
        open ${MINIKUBE_URL}
        break
    fi
    sleep 1
done
