read -p "Enter file name : " file
sum=0
while read -r lines
do
	sum=$((sum+lines))
done < $file
echo "Sum of numbers of file is : $sum"
