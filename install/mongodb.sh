#!/usr/bin/env bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
sudo echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update

if ($(aptitude show mongodb-org > /dev/null 2>&1)) then
    installed=$(apt-cache policy mongodb-org | grep Installed:)
    candidate=$(apt-cache policy mongodb-org | grep Candidate:)

    if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
        then sudo apt-get upgrade -y mongodb-org;
    fi
else sudo apt-get install -y mongodb-org;
fi
