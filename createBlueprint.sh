#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Provide a name for your app'
    exit 0
fi

wget https://steaks.github.io/blueprint/helloworld-blueprint.tar.gz
tar -xvzf helloworld-blueprint.tar.gz
mv helloworld $1