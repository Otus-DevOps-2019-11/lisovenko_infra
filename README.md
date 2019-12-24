```
testapp_IP = 35.204.179.209
testapp_port = 9292
```
# Запуск с локальным startup-script
```
gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=/home/lisovenko_evgeny/startup-script.sh

```
# Правила через gcloud
```
gcloud compute firewall-rules create default-puma-server \
    --network default \
    --priority 1000 \
    --direction ingress \
    --action allow \
    --target-tags puma-server \
    --source-ranges 0.0.0.0/0 \
    --rules TCP:9292 \
    --no-disabled \
    --no-enable-logging
```
