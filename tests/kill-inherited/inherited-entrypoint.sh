#!/usr/bin/env bash

myself_pid=$$

long-life-process.sh &
long_life_process_pid=$!

echo "------------------------------------------"
ps -aux
echo "myself_pid: $myself_pid"
echo "long_life_process_pid: $long_life_process_pid"
echo "------------------------------------------"

echo "Waiting for long-life-process.sh to start..."
sleep 10

echo "Killing long-life-process.sh..."
kill -9 $$

sleep 10
