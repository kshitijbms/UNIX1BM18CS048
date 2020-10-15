#! bin/shell

echo "To Calculate a^b:"
echo "Enter value of a:"
read no
echo "Enter value of b:"
read power

counter=0
ans=1
while [ $power -ne $counter ]
do
        ans=`expr $ans \* $no`
        counter=`expr $counter + 1`
done

echo "$no \^ $power is $ans"