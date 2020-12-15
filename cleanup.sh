#!/bin/bash

screen -ls | grep minikube_dashboard | cut -d. -f1 | awk '{print $1}' | xargs kill
minikube stop
minikube delete
