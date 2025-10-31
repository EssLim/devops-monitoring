#!/bin/bash

PROCESS="test"
URL="https://test.com/monitoring/test/api"
LOG="monitoring.log"
STATE_FILE=".monitor_state"

touch "$LOG"
touch "$STATE_FILE"

CURRENT_PID=$(pgrep -f "$PROCESS" | head -1)

if [ -n "$CURRENT_PID" ]; then
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL" --connect-timeout 5)
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Читаем старый PID
    if [ -f "$STATE_FILE" ]; then
        LAST_PID=$(cat "$STATE_FILE")
    else
        LAST_PID=""
    fi

    # Логируем перезапуск
    if [ "$LAST_PID" != "$CURRENT_PID" ] && [ -n "$LAST_PID" ]; then
        echo "[$TIMESTAMP] ПЕРЕЗАПУСК: PID $CURRENT_PID (был $LAST_PID)" >> "$LOG"
    elif [ -z "$LAST_PID" ] && [ -n "$CURRENT_PID" ]; then
        echo "[$TIMESTAMP] ЗАПУСК: PID $CURRENT_PID" >> "$LOG"
    fi

    # Логируем API
    echo "[$TIMESTAMP] API: HTTP $STATUS" >> "$LOG"

    # Сохраняем текущий PID
    echo "$CURRENT_PID" > "$STATE_FILE"
fi
