echo "welcome to the guessing game"
echo "guess the number of files in directory correctly to win!!!"
echo "good luck!!"

function readguess {
  echo "how many files are in the directory??"
  echo "guess correctly to win!!"
  read guess
  nof=$(ls -1A | wc -l)
}

readguess

re='^[0-9]+$'

while [[ $guess -ne $nof ]]
do
	if ! [[ $guess =~ $re ]]
	then
		echo "invalid number!!"
	elif [[ $guess -gt $nof ]]
	then
		echo "Too high!!"
	elif [[ $guess -lt $nof ]]
	then
       		echo "Too low!!"
	fi
	readguess
done

echo "Congrats!! correct answer"
