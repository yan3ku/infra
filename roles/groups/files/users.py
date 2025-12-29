#!/bin/python3
import re
import json
import os

data = {}

with open("./docker-config/.env", 'r') as f:
    for line in f:
        match = re.match(r'^([A-Z0-9_]+)_U=(.*)', line.strip())
        if match:
            raw_key, raw_value = match.groups()
            key = raw_key.lower().replace('_', '-');
            value = raw_value.strip()
            data[key] = value

print(json.dumps(data))
