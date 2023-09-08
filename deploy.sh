#!/bin/bash

scp -i /opt/cred.pem publish.sh ubuntu@54.162.151.131:/tmp/publish.sh
scp -i /opt/cred.pem docker-compose-remote ubuntu@54.162.151.131:~/maven/docker-compose.yml
 
ssh -i /opt/cred.pem ubuntu@54.162.151.131 "echo to-do-app-img >/tmp/auth.txt && echo $PASS >>/tmp/auth.txt && echo $BUILD_TAG >>/tmp/auth.txt && chmod +x /tmp/publish.sh && /tmp/publish.sh"

