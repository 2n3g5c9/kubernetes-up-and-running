#!/usr/bin/env bash

mkdir -p secrets

if [[ ! -f kuard.crt ]]; then
	curl -o secrets/kuard.crt  https://storage.googleapis.com/kuar-demo/kuard.crt
fi

if [[ ! -f kuard.key ]]; then
	curl -o secrets/kuard.key https://storage.googleapis.com/kuar-demo/kuard.key
fi

kubectl create secret generic kuard-tls \
  --from-file=secrets/kuard.crt \
  --from-file=secrets/kuard.key
