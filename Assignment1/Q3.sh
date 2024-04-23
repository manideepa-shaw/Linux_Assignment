read -p "Enter 5 digit number : " num
sum=0
while [ $num -gt 0 ]
do
	rem=$num%10
	num=$((num/10))
	sum=$((sum+rem))
done
echo "Sum of digits : $sum"
	
