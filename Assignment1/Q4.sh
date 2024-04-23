read -p "Enter a number : " num
cpy=$num
nod=0
while [ $cpy -gt 0 ]
do
	nod=$((nod+1))
	cpy=$((cpy/10))
done
cpy=$num
echo $nod
nod=$((nod-1))
rev=0
while [ $cpy -gt 0 ] 
do
	rem=$cpy%10
	rem=$((rem*10**nod))
	rev=$((rev+rem))
	nod=$((nod-1))
	cpy=$((cpy/10))
done
echo "Reversed : $rev"
