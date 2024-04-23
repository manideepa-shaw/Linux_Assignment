lines=`du -b | wc -l`
for (( i=1; i<=lines; i++ ))
do
	line=`du -b | head -$i | tail -1`
	`echo $line > temp`
	byte=`cut -d " " -f 1 temp`
	dire=`cut -d " " -f 2 temp`
	if [ $dire == "." ]
	then
		dire="Current Directory"
	fi
	echo "$dire is of size $byte bytes"
	rm temp
done
