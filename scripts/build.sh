#!/bin/bash

export TAG=$(grep 'Welcome to nginx ' index.html | awk '{print $4}' | awk -F '!' '{print $1}')

docker build -t sample-app:${TAG} -t sample-app:dev .
