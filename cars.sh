#! /bin/bash
# cars.sh
# Emily Chan

echo "Old Cars Inventory Program"
echo "1. Add a car"
echo "2. List the cars in the inventory file"
echo "3. Quit the program"
read choice
while [ "$choice" -ne  "3" ]
do
	case "$choice" in
	"1") echo "Enter the year of the car:";;
	read year
	echo "Enter the make of the car:";;
	read make
	echo "Enter the model of the car";;
	read model;
	new_car = year+":"+make+":"+model
	echo new_car >> My_old_cars
	"2")
	while read contents; do
		echo $contents
	done	
	"3") break;;
	esac
done
