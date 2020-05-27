all: README.md

README.md: guessinggame.sh
	printf "## Project on Bash programming, Make, Git and GitHub" > README.md
        printf "\n*Date*: " >> README.md
	date >> README.md
	printf "\n*Number of lines:* " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
