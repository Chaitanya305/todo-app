#!/bin/bash

export IMAGE=$(sed -n "1p" /tmp/auth.txt)
export PASS=$(sed -n "2p" /tmp/auth.txt)
export BUILD_TAG=$(sed -n "3p" /tmp/auth.txt)

docker login -u chaitanya305 -p $PASS

cd ~/maven

docker compose up -d
