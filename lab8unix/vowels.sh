#!bin/sh
#program to count number of vowels in file using tr command
echo "*****Count No. of Vowels in a File*****"
echo "Enter Filename : \c"
read fname
s=`tr -cd "[aeiouAEIOU]"<$fname | wc -c`
echo "Number of Vowels : $s"