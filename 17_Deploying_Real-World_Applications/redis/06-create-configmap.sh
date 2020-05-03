#!/usr/bin/env bash

kubectl create configmap \
  --from-file=slave.conf=./02-slave.conf \
  --from-file=master.conf=./01-master.conf \
  --from-file=sentinel.conf=./03-sentinel.conf \
  --from-file=init.sh=./04-init.sh \
  --from-file=sentinel.sh=./05-sentinel.sh \
  redis-config
