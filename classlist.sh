# Input type of operation 
while :
do

echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch 
echo " "

echo "Enter number 1:"
read num1
echo "Enter number 2:"
read num2
echo "  "

case $ch in
  1)sums=$(($num1+$num2));
    echo "Sum : "$sums
  ;; 
  2)diff=$(($num1-$num2));
    echo "Difference : "$diff 
  ;; 
  3)mult=$(($num1*$num2));
    echo "Product : "$mult
  ;; 
  4)div=$(($num1/$num2));
    mod=$(($num1%$num2));
    echo "Divisor : $div Reminder: $mod" 
  ;; 
  *)
    echo "Enter a valid operation"
  ;;
esac

echo "Do you want to continue( 1- continue /0- exit)"
read cont;

if [[ $cont != '1' ]]
   then echo " Calculator is terminated"
	break;

fi
done

echo " "
echo " Calculator execution is finished"











