# Kubernetes Cluster Nginx Alpine:3.10

Minimalist Nginx image based on Alpine linux (6 MB)

## Requirements

MacOS

## Prerequisites

* [Docker](https://docs.docker.com/installation/mac)
* [Homebrew](https://https://brew.sh)

## Setup

    brew install kubectl
    brew install minikube
    brew install hyperkit
    
## Start

    ./launch.sh
    
## Stop

    ./cleanup.sh
    
## Scale nginx-deployment
    
#### Scale up

    kubectl scale -n default deployment nginx-deployment --replicas=8

#### Scale down
    
    kubectl scale -n default deployment nginx-deployment --replicas=2
