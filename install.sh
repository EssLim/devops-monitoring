#!/bin/bash
set -e

sudo cp monitor.sh /usr/local/bin/monitor.sh
sudo chmod +x /usr/local/bin/monitor.sh
sudo cp systemd/monitor.* /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now monitor.timer

echo "Установлено! Лог: /var/log/monitoring.log"
