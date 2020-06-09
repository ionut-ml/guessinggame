#!/usr/bin/env bash.sh
# File: guessinggame.sh

function ask {
  echo "Guess the number of files in this dir:"
  read guess
}

function guessinggame {
  ask

  filecount=$(ls | wc -l)

  while [[ $guess -ne $filecount ]]
  do

    if [[ $guess -lt $filecount ]]
    then
      echo "Your answer is too low. Try again."
    else
      echo "Your answer is too high. Try again."
    fi

    ask

  done

  echo "Congratultations! You guessed the number of files in this dir."
}

echo "Let's play a game..."
guessinggame
echo "That was a nice game!"
