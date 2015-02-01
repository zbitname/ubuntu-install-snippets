#!/usr/bin/env bash

sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
if ($(aptitude show git > /dev/null 2>&1)) then
    installed=$(apt-cache policy git | grep Installed:)
    candidate=$(apt-cache policy git | grep Candidate:)

    if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
        then sudo apt-get upgrade -y git;
    fi
else sudo apt-get install -y git;
fi
