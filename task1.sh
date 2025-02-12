#!/bin/bash

# Find the process ID (PID) of infinite.sh
PID=$(ps | grep ' sh' | awk '{print $1}')

# Kill the process if found
if [ ! -z "$PID" ]; then
    kill -9 $PID
    echo "Killed infinite.sh (PID: $PID)"
else
    echo "No running infinite.sh process found."
fi
