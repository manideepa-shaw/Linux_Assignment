echo "No of files : `ls -l | egrep -c '^-'`"
echo "****Files****"
for i in *
do
	if [ -f $i ]
	then
		echo "$i"
	fi
done
echo "No of directories : `ls -l | egrep -c '^d'`"
echo "****Directories****"
for i in *
do
	if [ -d $i ]
	then
		echo "$i"
	fi
done
