#!/bin/bash

t='skeleton'
while getopts ":t:" o; do
    case "${o}" in
        t)
            t=${OPTARG}
            ;;
    esac
done
shift $((OPTIND-1))

if [[ $# -eq 0 ]] ; then
    echo 'Provide a name for your app'
    exit 0
fi

if [ $t != "skeleton" ] && [ $t != "helloWorld" ] && [ $t != "userProfile" ] ; then
    echo 'Invalid template. The template options are skeleton, helloWorld, userProfile.'
    exit 0
fi

if [[ $1 = "{your-app-name}" ]] ; then
    echo 'Provide a name for your app'
    exit 0
fi

wget https://raw.githubusercontent.com/steaks/blueprint-templates/main/${t}-blueprint.tar.gz
tar -xzf ${t}-blueprint.tar.gz
mv ${t} $1
rm ${t}-blueprint.tar.gz