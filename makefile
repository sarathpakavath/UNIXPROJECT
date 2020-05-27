all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo -n "*Date*: " >> README.md
	date >> README.md
	echo -n "*Number of lines:* " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
