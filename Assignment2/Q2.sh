IFS=:
for path in $PATH;
do 
	echo "Directory : $path" 
	x=`ls -ld $path | cut -d " " -f 1`
	echo "Permissions : $x"
	y=`ls -ld $path | cut -d " " -f 8`
	echo "Modification time : $y"
done
