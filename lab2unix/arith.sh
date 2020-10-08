#! /bin/sh
# expr operation

echo "Enter two numbers: \c"
read a b
echo "Addition: \c"
expr $a + $b
echo "Subtraction: \c"
expr $a - $b
echo "Multiplication: \c"
expr $a \* $b
echo "Division: \c"
expr $a / $b
echo "Modulus: \c"
expr $a % $b