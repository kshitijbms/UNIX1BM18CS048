#!/bin/sh
#shell script to demonstarte Arithmetic operations using expr command
#shell script to check whether an alphabet is Vowel or Consonant
Arithmetic()
{	echo "*****Arithmetic Operations*****"
	echo "Enter Arithmetic Expression (a op b): "
	read a op b
	case $op in
	    "+") res=`expr $a + $b`
	    ;;
	    "-") res=`expr $a - $b`
	    ;;
	    "*") res=`expr $a \* $b`
	    ;;
	    "/") res=`expr $a / $b`
	    ;;
	    "%") res=`expr $a % $b`
	    ;;
	    *) echo "Invalid operator."
	    exit 1
	    ;;
	esac

	echo "$a $op $b = $res"
}
Vowel()
{	echo " *****Vowel or Consonant*****"
	echo "Enter an Alphabet: \c"
	read ch
	yes="$ch is a Vowel."
	case $ch in
		a) echo "$yes";;
		A) echo "$yes";;
		e) echo "$yes";;
		E) echo "$yes";;
		i) echo "$yes";;
		I) echo "$yes";;
		o) echo "$yes";;
		O) echo "$yes";;
		u) echo "$yes";;
		U) echo "$yes";;
		*) echo "$ch is a Consonant.";;
	esac
}

while [ 1 -eq 1 ]
do
	echo "----------------------------------------"
	echo "1. Arithmetic Operations.\n2. Vowel or Consonant.\n3. Exit"
	echo "Enter your choice : \c"
	read choice
	case $choice in
		1)Arithmetic 
		;;
		2)Vowel
		;;
		3)exit 1
		;;
		*)echo "Invalid Choice."
		;;
	esac
done