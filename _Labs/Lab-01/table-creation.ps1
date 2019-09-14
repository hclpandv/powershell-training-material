Param($number)
echo "**************************************************************"
echo "*************** TABLE CREATION PROGRAM  **********************"
echo "**************************************************************"

echo "Lets see how the table of $number Looks like"

foreach($i in 1..10){
 echo "$number $i's are $(($number*$i))"
}
