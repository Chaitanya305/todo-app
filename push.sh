#!/bin/bash

docker login -u chaitanya305 -p $PASS

docker tag to-do-app-img:$BUILD_TAG chaitanya305/to-do-app-img:$BUILD_TAG

docker push chaitanya305/to-do-app-img:$BUILD_TAG  
