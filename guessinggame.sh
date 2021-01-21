#!/usr/bin/env bash
# File: guessinggame.sh

#START
echo "Guessing Game!"
echo "Guess how many files are in the current directory"

#Count how many files are in the directory
function the_number {
ls -1 | wc -l
}

#A variable with the value of the function to compare
how_many=$(the_number)

#Loop "while" with "read" Compares your input with the number of files in the directory
	while read your_guess
		do
			#If you guess the number, congratulate the user and exit program
			if [[ "$your_guess" == "$how_many" ]]
			then
			echo "Congratulations, you guessed it :D" && echo "Exiting Program" && exit
			#If the input it's not a number, 
			elif [[ "$your_guess" =~ ^[^0-9]*$ ]]
			then
			echo "Error, you have to enter a number"
			#If your input it's lower
			elif [[ "$your_guess" < "$how_many" ]]
			then
			echo "Too low, guess again!"
			#If your input it's higher
			elif [[ "$your_guess" > "$how_many" ]]
			then
			echo "Too high, guess again!"
			fi
			
		done


