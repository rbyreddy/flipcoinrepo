#! /bin/bash -x

randomValue=0
IS_HEAD=0
IS_TAIL=1
headNumber=0
tailNumber=0
WINING_NUMBER=21

while [ $headNumber -lt $WINING_NUMBER ] && [ $tailNumber -lt $WINING_NUMBER ]
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

if [ $headNumber -eq $tailNumber ]
then
	echo "Tie"
elif [ $headNumber -gt $tailNumber ]
	then
		echo "Head won by "$(($headNumber - $tailNumber))
	else
		echo "Tail won by "$(($tailNumber - $headNumber))
fi

#echo "Number of time head " $headNumber
#echo "Number of time tails " $tailNumber

