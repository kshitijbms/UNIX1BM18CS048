#!/bin/sh
#Write a shell program to find biggest of three Numbers using  read statement or positional parameter technique.

if test $# -lt 3 
then
    echo "Provide data in this format : $0 n1 n2 n3"
    exit 1
fi 
a=$1
b=$2
c=$3
if [ $a -gt $b -a $a -gt $c ]
then
    echo "$a is largest integer among ( $* )"
elif [ $b -gt $a -a $b -gt $c ]
then
    echo "$b is largest integer ( $* )"
elif [ $c -gt $a -a $c -gt $b ];
then
    echo "$c is largest integer ( $* )"
else
    echo "Something went wrong."
fi
