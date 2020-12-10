#!/bin/sh
#program to check for
if [ $# -ne 2 ]
then
	echo "Arguments aren't in this format :  ( $0 <file1> <file2>)" 
elif [ ! -e $1  ]
then
	echo "$1 doesn't exist"
elif [ ! -e $2 ]
then 
	echo "$2 doesn't exist."
else
	p1=`ls -l $1|cut -c 2-10`
	p2=`ls -l $2|cut -c 2-10`
	if [ $p1 = $p2 ]
	then
		echo "File permissions are equal & is $p1"
	else
		echo "File permissions are not equal."
		echo "$1 :  $p1"
		echo "$2 :  $p2"
	fi
fi