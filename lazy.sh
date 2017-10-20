#!/bin/sh
# chmod +x lazy.sh then exec with ./lazy.sh not in the repo directory

Branches='android tns stm32 LIDAR';

if [[ $PWD = 'projet-robot' ]]; then
    cd ..
fi

if (( $# == 1 )); then
    userBranch=$1;
    if [[ ! -d projet-robot ]]; then
        echo 'Cloning Repo...';
        echo 'git clone https://github.com/Quentin-Cornu/projet-robot.git'
        git clone https://github.com/Quentin-Cornu/projet-robot.git;
        cd projet-robot;
        echo 'Setting Up Branches...';
        for branch in $Branches; do
            echo "git checkout -b $branch"
            git checkout -b $branch 2&> /dev/null;
            git pull origin $branch 2&> /dev/null;
        done;
    else
        cd projet-robot;
    fi
    git checkout $userBranch;
else
    echo "Usage: $0 <$Branches>";
fi
