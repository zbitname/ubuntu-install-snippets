#!/usr/bin/env bash

if ($(aptitude show git-core > /dev/null 2>&1)) then
    installed=$(apt-cache policy git-core | grep Installed:)
    candidate=$(apt-cache policy git-core | grep Candidate:)

    if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
        then sudo apt-get upgrade -y git-core;
    fi
else sudo apt-get install -y git-core;
fi

if ($(aptitude show bash-completion > /dev/null 2>&1))
    then
        installed=$(apt-cache policy bash-completion | grep Installed:)
        candidate=$(apt-cache policy bash-completion | grep Candidate:)

        if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
            then sudo apt-get upgrade -y bash-completion;
        fi
    else sudo apt-get install -y bash-completion;
fi

if ($(aptitude show git-flow > /dev/null 2>&1)) then
    installed=$(apt-cache policy git-flow | grep Installed:)
    candidate=$(apt-cache policy git-flow | grep Candidate:)

    if [[ ${installed/Installed: } != ${candidate/Candidate: } ]]
        then sudo apt-get upgrade -y git-flow;
    fi
else sudo apt-get install -y git-flow;
fi

# git flow autocomplete
sudo bash -c "curl -sL https://raw.githubusercontent.com/bobthecow/git-flow-completion/master/git-flow-completion.bash > /etc/bash_completion.d/git-flow"
. /etc/bash_completion.d/git-flow