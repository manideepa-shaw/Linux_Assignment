size=0
for i in *
do
	if [ -f $i ]
	then
		field=`ls -l $i | cut -d " " -f 5`
		echo "$i : $field"
		size=$((size+field))
	fi
done
echo "Total size bof the files in this directory : $size"
