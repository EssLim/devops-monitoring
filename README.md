
- [x] Процесс \`test\`
- [x] Скрипт \`monitor.sh\`
- [x] Лог в \`monitoring.log\`


- [x] \`monitor.service\`
- [x] \`monitor.timer\` — каждую минуту
- [x] \`install.sh\` — установка на сервер


\`\`\`bash
sudo ./install.sh
\`\`\`


\`\`\`bash
sudo systemctl status monitor.timer
sudo tail -f /var/log/monitoring.log
\`\`\`

## Лог:
\`\`\`
$(cat monitoring.log)
\`\`\`
