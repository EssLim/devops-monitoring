# DevOps Monitoring — 14-дневный курс

## День 1: Bash + мониторинг
- [x] Процесс \`test\`
- [x] Скрипт \`monitor.sh\`
- [x] Лог в \`monitoring.log\`

## День 2: systemd
- [x] \`monitor.service\`
- [x] \`monitor.timer\` — каждую минуту
- [x] \`install.sh\` — установка на сервер

## Установка на Linux:
\`\`\`bash
sudo ./install.sh
\`\`\`

## Проверка:
\`\`\`bash
sudo systemctl status monitor.timer
sudo tail -f /var/log/monitoring.log
\`\`\`

## Лог:
\`\`\`
$(cat monitoring.log)
\`\`\`
