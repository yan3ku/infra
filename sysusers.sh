#!/bin/sh

echo -n '{'
first=1

# Parse input from file or stdin
grep -E '^[A-Z0-9_]+_U=' "./docker-config/.env" | while read -r line; do
    key=$(echo "$line" | cut -d= -f1 | sed 's/_U$//' | tr '[:upper:]' '[:lower:]')
    value=$(echo "$line" | cut -d= -f2 | tr -d '[:space:]')

    if [ "$first" -eq 1 ]; then
        first=0
    else
        echo -n ', '
    fi

    echo -n "\"$key\": $value"
done

echo '}'
