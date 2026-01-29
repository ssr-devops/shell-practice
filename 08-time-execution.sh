#!/bin/bash

TIMESTAMP=$(date +%s)

echo "Start Time (in seconds since epoch): $TIMESTAMP"

sleep 5


echo "End Time (in seconds since epoch): $END_TIMESTAMP"
END_TIMESTAMP=$(date +%s)

ELAPSED_TIME=$((END_TIMESTAMP - TIMESTAMP))

echo "script executed in : $ELAPSED_TIME seconds"