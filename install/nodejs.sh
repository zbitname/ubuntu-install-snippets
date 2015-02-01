#!/usr/bin/env bash

curl -sL https://deb.nodesource.com/setup | sudo bash -

if ($(aptitude show nodejs > /dev/null 2>&1)) then
    installed=$(apt-cache policy nodejs | grep Installed:)
    candidate=$(apt-cache policy nodejs | grep Candidate:)

    if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
        then sudo apt-get upgrade -y nodejs;
    fi
else sudo apt-get install -y nodejs;
fi

if ($(aptitude show build-essential > /dev/null 2>&1)) then
    installed=$(apt-cache policy build-essential | grep Installed:)
    candidate=$(apt-cache policy build-essential | grep Candidate:)

    if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
        then sudo apt-get upgrade -y build-essential;
    fi
else sudo apt-get install -y build-essential;
fi
