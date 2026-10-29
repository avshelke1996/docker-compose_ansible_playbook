#!/bin/bash
set -e

REPO="https://github.com/avshelke1996/ansible_playbook_jenkins.git"
DIR="giiit"

# Clone the repository if it doesn't exist
if [ ! -d "$DIR/.git" ]
then
    git clone "$REPO" "$DIR"
else
    echo "Repository already exists"
fi
