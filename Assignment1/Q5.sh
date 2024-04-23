`cd`
read -p "Enter username : " user
x=`cat /etc/passwd | grep $user`
g=`echo $x > file1`
echo "File created"
username=`cut -d ":" -f 1 file1`
echo "Username : $username"
echo "Password : `cut -d ":" -f 2 file1`"
echo "User ID : `cut -d ":" -f 3 file1`"
echo "Group ID : `cut -d ":" -f 4 file1`"
echo "User ID info : `cut -d ":" -f 5 file1`"
echo "Home Directory : `cut -d ":" -f 6 file1`"
echo "Login Shell : `cut -d ":" -f 7 file1`"
rm file1
