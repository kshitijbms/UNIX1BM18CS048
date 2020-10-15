#!/bin/shell


arg=$1

if [ -d "${arg}" ] ; then
    echo "$arg is a directory";
    ls -l $arg
else
    if [ -f "${arg}" ]; then
        echo "${arg} is a file";
        stat $arg
    else
        echo "${arg} is not valid";
        exit 1
    fi
fi