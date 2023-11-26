#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Provide a name for your app'
    exit 0
fi

if [[ $1 = "{your-app-name}" ]] ; then
    echo 'Provide a name for your app'
    exit 0
fi

wget https://raw.githubusercontent.com/steaks/blueprint-templates/main/helloworld-blueprint.tar.gz
tar -xzf helloworld-blueprint.tar.gz
mv helloworld $1
rm helloworld-blueprint.tar.gz
