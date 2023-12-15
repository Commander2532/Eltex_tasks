#!/bin/bash

for ((i=0; i<20; i++)); do
	sleep 60 &
done
echo $(pidof sleep) > child.pid
sleep 3600
