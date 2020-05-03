#!/usr/bin/env bash

kubectl create configmap my-config \
  --from-file=01-my-config.txt \
  --from-literal=extra-param=extra-value \
  --from-literal=another-param=another-value
