all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#The Unix Workbench Final Assignment" > README.md
	echo "\n*by Jon Hopkins University on [coursera.org](https://www.coursera.org/learn/unix)." >> README.md
	echo "\n##The Guessing Game"
	echo "\n###Description"
	echo "\nThis program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they are congratulated."
	echo "\n### Make Date:" >> README.md
	date >> README.md
	echo "\n###Number of Lines in guessinggame.sh:" >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
