#! /bin/bash -x

randomValue=0
IS_HEAD=0
IS_TAIL=1

randomValue=$((RANDOM%2))

if [ $randomValue -eq $IS_HEAD ]
then
	echo "Cong. you got Head"
else
	echo "You got tails"
fi
