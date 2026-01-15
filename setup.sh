#!/bin/bash

# Checks and installs hugo and git if necessary
if ! command -v hugo &> /dev/null
then
    echo "hugo is not installed. Installing via Snap..."
    sudo snap install hugo
fi

if ! command -v git &> /dev/null
then
    echo  "git is not installed. Installing  via apt..."
    sudo apt update
    sudo apt install -y git
fi

# Checks for Github directory in home directory and changes into it
if [ ! -d "$HOME/Github" ]; then
    echo "Github directory not found. Creating it..."
    mkdir "$HOME/Github"
fi
cd "$HOME/Github"

# Clones the repository and moves into it
if [ ! -d "$HOME/Github/kubuntu.org" ]; then
    git clone git@github.com:kubuntu-team/kubuntu.org.git
fi
cd kubuntu.org

# Creates a new branch
branchname=$USER"new-contributor"
git checkout -b $branchname

# Displays a welcome message
echo "Welcome to the kubuntu.org project! You are now on the branch $branchname."
