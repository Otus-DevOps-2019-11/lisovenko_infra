#!/bin/bash

# Копируем в /etc/systemd/system/имя_сервиса.service
sudo cp /home/appuser/puma.service /etc/systemd/system/
# Перегружаем для того, чтобы systemd узнал о сервисе
sudo systemctl daemon-reload
# Активируем сервис для старта во время запуска системы
sudo systemctl enable puma.service
