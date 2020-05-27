all: README.md

README.md: guessinggame.sh
	echo "## Project on bash programming, make, git and github" > README.md
	echo -n "*Date**: " >> README.md
	date >> README.md
	echo -n "*Number of lines:* " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
