Это задание гуглил + чат гпт

#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <log_directory>"
    exit 1
fi

LOG_DIR="$1"
DATE=$(date +"%Y-%m-%d")
ARCHIVE_NAME="logs_$DATE.tar.gz"

# Находим и архивируем старые логи
find "$LOG_DIR" -name "*.log" -mtime +7 -print0 | tar -czvf "$ARCHIVE_NAME" --remove-files --null -T -

if [ $? -eq 0 ]; then
    echo "Архив создан: $ARCHIVE_NAME"
    echo "Удалены файлы:"
    find "$LOG_DIR" -name "*.log" -mtime +7 -print
else
    echo "Ошибка при создании архива!"
fi