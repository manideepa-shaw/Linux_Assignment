!/bin/bash

echo "Select the assignment number:";
echo "1. Assignment 1"
echo "2. Assignment 2"
echo "3. Assignment 3"
echo "4. Press 4 to exit"
echo -n "Enter your menu choice [1-4]: "


while :
do


read choice


case $choice in

  1)  echo "You have selected the Assignment 1"
        echo "Select the program number:";
        echo "1. p1"
        echo "2. p2"
        echo "3. p3"
        echo "4. p4"
        echo "5. p5"
        echo "6. Press 6 to exit"
        echo -n "Enter your menu choice [1-6]: "

        while :
        do

        read choice

        case $choice in

        1)  echo "You have selected the program 1"
                read -p "Enter length: " a
                read -p "Enter breadth: " b
                peri=$((2*(a+b)))
                area=$((a*b))
                echo "Perimeter: " $peri
                echo "Area: " $area ;;

        2)  echo "You have selected the program 2"
                read -p "Enter basic salary: " basic
                read -p "Enter rate: " rate
                rateOfDA=$(echo "scale=2; $rate/100" | bc)
                da=$(echo "scale=2; $rateOfDA*$basic" | bc)
                netIncome=$(echo "scale=2; $da*$basic" | bc)
                echo "DA: $da"
                echo "Net Income: $netIncome";;

        3)  echo "You have selected the program 3"
                read -p "Enter value: " value
                sum=0
                while [[ $value -gt 0 ]] ; do
                    sum=$(($sum+$((value%10))))
                    value=$((value/10))
                done
                echo "Sum: $sum";;    

        4)  echo "You have selected the program 4"
                read -p "Enter value: " value
                rev=0
                while [[ $value -gt 0 ]] ; do
                    rev=$(((($rev*10))+$((value%10))))
                    value=$((value/10))
                done
                echo "Reverse value: $rev";;

        5)  echo "You have selected the program 5"
                read -p " Enter userName :  " user
                flag=0
                while IFS=':' read -r username password userId groupId userinfo dirhom shelllog ; 
                do

                
                if [ "$username" = "$user" ];
                then
                
                    echo " username : $username "
                    echo " password : $password "
                    echo " userId: $userId "
                    echo " groupId: $groupId "
                    echo " user Id info: $userinfo "
                    echo " Home Directory: $dirhom "
                    echo " Login Shell : $shelllog "
                    flag=1
                    
                fi
                
                done < /etc/passwd


                if [ $flag -eq 0  ]
                then
                echo " User not found "
                fi;;
                                        
        6)  echo "Quitting ..."
            break;;

        *) echo "invalid option";;
        
        esac
            echo "-----------------------------------------------------"
            echo -n "Enter your menu choice [1-6]: "
        done;;

  2)  echo "You have selected the Assignment 2"
        echo "Select the program number:";
        echo "1. p1"
        echo "2. p2"
        echo "3. p3"
        echo "4. p4"
        echo "5. p5"
        echo "6. Press 6 to exit"
        echo -n "Enter your menu choice [1-6]: "

        while :
        do

        read choice

        case $choice in

        1)  echo "You have selected the program 1"
        for file in *; do
            if [ -f "$file" ]; then
                echo "$file is a regular file"
            elif [ -d "$file" ]; then
                echo "$file is a directory"
            else
                echo "$file is neither a regular file nor a directory"
            fi
        done;;  

        2)  echo "You have selected the program 2"
                IFS=':' read -ra dirs <<< "$PATH"
                for dir in "${dirs[@]}"; do
                    ls -ld -- "$dir"
                done;;

        3)  echo "You have selected the program 3"
            grep -E "vendor_id|model name|cpu MHz|cache size" /proc/cpuinfo;;

        4)  echo "You have selected the option 4"
                echo "Home Directory: $HOME"
                echo "Operating System Type: $(uname -s)"
                echo "Version: $(uname -v)"
                echo "Release Number: $(uname -r)"
                echo "Kernel Version: $(uname -v)"
                echo "Current Path Setting: $PATH";;  

        5)  echo "You have selected the program 5"
                read -p "Enter directory path: " dir
                du -h $dir;;
                                        
        6)  echo "Quitting ..."
            break;;

        *) echo "invalid option";;
        
        esac
            echo "-----------------------------------------------------"
            echo -n "Enter your menu choice [1-6]: "
        done;;

  3)  echo "You have selected the Assignment 3"
        echo "Select the program number:";
        echo "1. p1"
        echo "2. p2"
        echo "3. p3"
        echo "4. p4"
        echo "5. p5"
        echo "6. p6"
        echo "7. Press 7 to exit"
        echo -n "Enter your menu choice [1-7]: "

        while :
        do

        read choice

        case $choice in

        1)  echo "You have selected the program 1"
        i=0
        while read line; do
            sum=0
            for num in $line; do
                sum=$((sum + num))
            done
            i=$((i+1))
            echo "Sum for line $i: $sum"
        done < input.txt;;

        2)  echo "You have selected the program 2"
                files=0
                dirs=0
                for item in *; do
                    if [ -f "$item" ]; then
                        files=$((files + 1))
                        echo "File: $item"
                    elif [ -d "$item" ]; then
                        dirs=$((dirs + 1))
                        echo "Directory: $item"
                    fi
                done

                echo "Total files: $files"
                echo "Total directories: $dirs";;  

        3)  echo "You have selected the program 3"
                total_size=0

                for file in *; do
                    if [ -f "$file" ]; then
                        size=$(ls -l "$file" | awk '{print $5}')
                        echo "$file :: $size"
                        total_size=$((total_size + size))
                    fi
                done

                echo "Total bytes used: $total_size";;

        4)  echo "You have selected the program 4"
                rm *~
                echo "Temporary files deleted.";;

        5)  echo "You have selected the program 5"
                for file in *.sh; do
                    cp "$file" "${file%.sh}.exe"
                done

                echo "Files renamed.";;  

        6)  echo "You have selected the program 6"
                count=$(ls -l | grep -c ".sh$")
                echo "Number of shell scripts: $count";;
                                        
        7)  echo "Quitting ..."
            break;;

        *) echo "invalid option";;
        
        esac
            echo "-----------------------------------------------------"
            echo -n "Enter your menu choice [1-7]: "
        done;;    
                                
  4)  echo "Quitting ..."
      exit;;

  *) echo "invalid option";;
  
esac
    echo "-----------------------------------------------------"
    echo "Select the assignment number:";
    echo "1. Assignment 1"
    echo "2. Assignment 2"
    echo "3. Assignment 3"
    echo "4. Press 4 to exit"
    echo -n "Enter your menu choice [1-4]: "
done
