files=`ls *.sh`
for file in $files
do
	filename=`echo $file | cut -d "." -f 1`
	filename+=".exe"
	`mv $file $filename`
done
