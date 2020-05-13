#!/bin/sh
ssh ubuntu@54.93.254.18 <<EOF
 cd ~/ci-nodejs-jenkins
 git pull
 npm install — production
 pm2 restart all
 exit
EOF
