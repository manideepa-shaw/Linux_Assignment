read -p "Enter basic salary : " basic_sal
read -p "Enter DA percentage : " da

per=`echo "scale=2; (($basic_sal * $da) / 100) + $basic_sal" | bc`

echo $per
