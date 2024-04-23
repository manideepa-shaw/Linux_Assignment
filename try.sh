x=5;
echo "x : $x";
if [ $x -le 5 ]
then
	echo "NO";
else
	echo "YES";
fi
for (( i=0 ; i < 5 ; i++ ))
do
	y=`expr $i+1 | bc`;
	echo "$((y+5))";
done
