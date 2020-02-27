echo "Script Name  : $0"
echo "$0 $1 $2 "
echo "Number of arguments : $#"
if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 
fi

echo " "

FILE="$1"
if [ -e "$FILE" ];
then
   echo "File $FILE exist."
else
   echo "File $FILE does not exist" 
   echo "Exiting out of the program"
   echo "  "
   exit    
fi
echo " "
USERNAME="$2"
echo "Username : $USERNAME"
index="$(grep -iwc $2 $1)"
echo $index
if [ $index != 0 ]
then
	echo "Name already exits in the file"
else	
	echo " Username doesn't exist"
	echo " "
	echo " Adding it to the end of the file"
	echo $USERNAME >> $FILE 	
fi
echo " "
echo "Search Complete"
