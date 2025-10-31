#!/bin/bash

PROCESS="test"
URL="https://test.com/monitoring/test/api"
LOG="monitoring.log"

touch "$LOG"

if pgrep -f "$PROCESS" > /dev/null; then
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL" --connect-timeout 5)
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$TIMESTAMP] API: HTTP $STATUS" >> "$LOG"
else
    echo "[$TIMESTAMP] Process $PROCESS not running" >> "$LOG"
fi
