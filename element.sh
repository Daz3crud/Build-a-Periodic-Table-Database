#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 1
fi

# Check if input is a number (atomic_number)
if [[ $1 =~ ^[0-9]+$ ]]; then
  ELEMENT_RESULT=$($PSQL "SELECT atomic_number, name, symbol FROM elements WHERE atomic_number=$1")
else
  ELEMENT_RESULT=$($PSQL "SELECT atomic_number, name, symbol FROM elements WHERE symbol='$1' OR name='$1'")
fi

if [[ -z $ELEMENT_RESULT ]]; then
  echo "I could not find that element in the database."
  exit 1
fi

echo "$ELEMENT_RESULT" | while IFS="|" read ATOMIC_NUMBER NAME SYMBOL; do
  PROPERTIES_RESULT=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius, type FROM properties JOIN types ON properties.type_id = types.type_id WHERE atomic_number=$ATOMIC_NUMBER")

  echo "$PROPERTIES_RESULT" | while IFS="|" read ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE; do
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
  done
done
