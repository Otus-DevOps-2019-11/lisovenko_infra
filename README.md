## lisovenko_infra
```
lisovenko Infra repository
```
## Подключение к someinternalhost в одну команду
```
ssh -i ~/.ssh/appuser -A -t appuser@104.155.31.90 ssh 10.132.0.3
```
## Подключение через 'ssh someinternalhost'. Добавить в /etc/ssh/ssh_config
```
host bastion
    HostName 104.155.31.90
    User appuser
    IdentityFile ~/.ssh/appuser
    ForwardAgent yes

Host someinternalhost
    HostName 10.132.0.3
    User appuser
    ProxyJump bastion
```
## Добавлен доступ через валидный сертификат
```
https://104.155.31.90.sslip.io/

Надо ли было дополнительно прикручивать Let’s Encrypt?
```
## Адреса
```
bastion_IP = 104.155.31.90
someinternalhost_IP = 10.132.0.3


```
testapp_IP = 35.198.167.169
testapp_port = 9292
```
