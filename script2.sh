#!/bin/bash 

##    a script to use if else with example of diving licence requirement fullfiled or not ############

echo " welcome :) what is your age i'll tell you that you can drive or not "
read age 

if [ $age -ge 18 ];
then 
echo " you can drive "
else 

	echo " sorry, you can't drive "
fi

