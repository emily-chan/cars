#! /bin/bash
# cars.sh
# Emily Chan

while true
do
	echo "Old Cars Inventory Program"
	echo "1. Add a car"
	echo "2. List the cars in the inventory file"
	echo "3. Quit the program"
	read choice

		case "$choice" in
			"1") echo "Enter the year of the car:"
			read year
			echo "Enter the make of the car:"
			read make
			echo "Enter the model of the car:"
			read model;
			newCar="$year":"$make":"$model"
			echo $newCar >> My_old_cars.txt
			echo "The car was added to inventory";;
			"2") echo "Cars in inventory:" 
			while read car
			do
			sort My_old_cars.txt
			break
			done < My_old_cars.txt;;
                        "3") echo "Goodbye"
                        break;;
			
		esac
done
