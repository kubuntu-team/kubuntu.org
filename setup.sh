#!/bin/bash

# Checks and installs hugo and git if necessary
for cmd in hugo git
do
    if ! command -v $cmd &> /dev/null
    then
        echo "$cmd is not installed. Installing via Snap..."
        sudo snap install $cmd
    fi
done

# Checks for Github directory in home directory and changes into it
if [ ! -d "$HOME/Github" ]; then
    echo "Github directory not found. Creating it..."
    mkdir "$HOME/Github"
fi
cd "$HOME/Github"

# Clones the repository and moves into it
if [ ! -d "$HOME/Github/kubuntu.org" ]; then
    git clone git@github.com:ricktimmis/kubuntu.org.git
fi
cd kubuntu.org

# Creates a new branch
branchname=$USER"new-contributor"
git checkout -b $branchname

# Displays a welcome message
echo "Welcome to the kubuntu.org project! You are now on the branch $branchname."