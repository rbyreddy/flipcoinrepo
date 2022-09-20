#! /bin/bash -x

randomValue=0
IS_HEAD=0
IS_TAIL=1
headNumber=0
tailNumber=0
totalFlip=20

while [ $totalFlip -gt 0 ]
do
	randomValue=$((RANDOM%2))
	if [ $randomValue -eq $IS_HEAD ]
	then
		((headNumber++))
		echo "Cong. you got Head"
	else
		((tailNumber++))
		echo "You got tails"
	fi
	((totalFlip--))
done

echo "Number of time head " $headNumber
echo "Number of time tails " $tailNumber
