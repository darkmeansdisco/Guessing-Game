#!usr/sh
clear

function guessinggame {
	num_of_files=$(ls | wc -l)
	game=true

	echo "Guess how many files there are in the current directory!"
	echo "Enter your Guess: "
	read guess

	echo "You entered: " $guess
	
	re='^[0-9]+$'

	while [[ $game -eq true ]] 
	do
		
		while ! [[ $guess =~ $re ]]
		do
			echo "error: Give an integer"
			echo "Guess Again: "
			read guess
		done
		
		if [[ $guess -gt $num_of_files ]]
		then
			echo "You guessed too high, guess again"
			echo "Enter your Guess: "
			read guess
		elif [[ $guess -lt $num_of_files ]]
		then
			echo "You guessed too low, guess again"
			echo "Enter your Guess: "
			read guess
		elif [[ $guess -eq $num_of_files ]]
		then
			echo "Correct! Congratulations!"
			game=false
			break
		fi
	done
}

guessinggame
		