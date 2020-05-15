#!/bin/sh
ssh ubuntu@54.93.254.18 <<EOF
 git clone https://github.com/ftwr/ci-nodejs-jenkins.git
 cd ~/ci-nodejs-jenkins
 git pull
 npm install
 pm2 restart all
 exit
EOF
