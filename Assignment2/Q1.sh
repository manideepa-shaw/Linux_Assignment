lines=`ls -l | wc -l`
for (( i=2; i<=lines; i++ ))
do
	temp=`ls -l | head -$i | tail -1`
	line=`echo $temp > file`
	echo -n `cut -d " " -f 9 file`
	echo -n " : "
	test=`cut -c 1 file`
	if [ $test = "d" ]
	then
		echo "directory"
	else
		echo "file"
	fi
	`rm file`
done
