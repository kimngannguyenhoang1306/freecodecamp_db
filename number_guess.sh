#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
COUNT=0
RANDOM_NUM=$(( $RANDOM % 1000 + 1 ))
echo $RANDOM_NUM
echo Enter your username:
read USERNAME

USER_ID=$($PSQL "select user_id from users where name='$USERNAME'")
if [[ -z $USER_ID ]]
then
  INSERT_NEW_USER=$($PSQL "insert into users(name) values('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where name='$USERNAME'")
  echo Welcome, $USERNAME! It looks like this is your first time here.
else
  echo $($PSQL "select count(*), min(number_of_guess) from games where user_id='$USER_ID'") | ( read GAME_PLAYED BAR BEST_GAME
  echo Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses.
  )
fi

MAIN () {
  if [[ -z $1 ]]
  then
    echo Guess the secret number between 1 and 1000:
  else
    echo $1
  fi
  read GUESS_NUMBER
  if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    MAIN "That is not an integer, guess again:"
  else
    COUNT=$((COUNT+1))
    if [[ $GUESS_NUMBER -gt $RANDOM_NUM ]]
    then
      MAIN "It's higher than that, guess again:"
    elif [[ $GUESS_NUMBER -lt $RANDOM_NUM ]]
    then
      MAIN "It's lower than that, guess again:"
    else 
      echo You guessed it in $COUNT tries. The secret number was $RANDOM_NUM. Nice job!
    fi
  fi
}

MAIN
