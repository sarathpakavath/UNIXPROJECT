echo "welcome to the guessing game"
echo "guess the number of files in directory correctly to win!!!"
echo "good luck!!"

function readguess {
  echo "how many files are in the directory??"
  echo "guess correctly to win!!"
  read guess
  nof=$(ls -l | wc -l)
}

readguess

while [[ $guess -ne $nof ]]
do
	if [[ $guess -lt $nof ]] 
	then
		echo "Too low"
	else
		echo "Too high"
	fi
	readguess
done

echo "Congrats!! correct answer"
