#!/bin/bash
for log in /var/lib/docker/containers/*/*-json.log; do jq < $log 2 >&1 /dev/null || echo $log corrupted;done