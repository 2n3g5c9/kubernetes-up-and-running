#!/usr/bin/env bash

kubectl create cm --from-file 01-ghost-config.js ghost-config
