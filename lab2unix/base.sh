#! /bin/sh
#shell script to accept a filename from the User and display 
#the attributes,contents and word count of the file Perform copy,rename  
#operation by accepting two filenames from the user
echo "Enter the Filename:\c"
read fname
echo "Attributes: \c"
ls -l $fname
echo "Contents: "
cat $fname
echo "Word count: \c" 
wc -w $fname
echo "Enter name for copy : \c"
read f1name
cp $fname $f1name
echo "Success: $fname copied to $f1name"
echo "Enter Name to rename: "
read name
mv $fname $name
echo "Success: $fname renamed as $name"
