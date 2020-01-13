# This function continuously asks to guess how many files are in the current directory
# until the user gets the correct answer
function guessinggame {

	echo "How many files are in the current directory?"

	read guess

	local numfiles=$(ls -l | grep ^- | wc -l)

	while [[ guess -ne numfiles ]]
	do
		if [[ guess -lt numfiles ]]
		then
			echo "Your guess was too low. Guess again."
		elif [[ guess -gt numfiles ]]
		then
			echo "Your guess was too high. Guess again."
		fi
		read guess
	done

	echo "Your guess is correct!"
}
guessinggame
