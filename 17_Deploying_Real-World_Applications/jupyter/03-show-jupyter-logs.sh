#!/usr/bin/env bash

POD_NAME=$(kubectl get pods --namespace jupyter --no-headers | awk '{print $1}')

kubectl logs --namespace jupyter ${POD_NAME}
