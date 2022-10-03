#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo $RANDOM
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


