#!/bin/bash

for ((i=0; i<3; i++)); do pkill -o sleep; done
echo $(pidof sleep) > child.pid
