#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if [[ -z $1 ]]
then
  echo Please provide an element as an argument.
else
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    ELEMENT=$($PSQL "select * from elements where atomic_number=$1")
  else
    ELEMENT=$($PSQL "select * from elements where symbol='$1' or name='$1'")
  fi

  if [[ $ELEMENT ]]
  then
    echo $ELEMENT | ( read ATOMIC_NUMBER BAR SYMBOL BAR NAME 
      PROPERTIES=$($PSQL "select atomic_mass, melting_point_celsius, boiling_point_celsius from properties where atomic_number=$ATOMIC_NUMBER")
      echo $PROPERTIES | ( read MASS BAR MELTING BAR BOILING 
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a nonmetal, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."))
  else
    echo I could not find that element in the database.
  fi
fi