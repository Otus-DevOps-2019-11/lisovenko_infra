#!/bin/bash

gcloud compute instances create reddit-app\
  --project=infra-262710 \
  --zone=europe-west1-d \
  --boot-disk-size=10GB \
  --image=reddit-base-1577528659 \
  --machine-type=f1-micro \
  --boot-disk-type=pd-standard \
  --tags=puma-server,http-server,https-server \
  --restart-on-failure
