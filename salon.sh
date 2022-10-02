#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

#echo $($PSQL "truncate appointments, customers restart identity")
MAIN () {
  until [[ $SERVICE_SELECTED ]]
  do
    echo -e "\nList of services:"
    LIST_OF_SERVICES=$($PSQL "select * from services")
    echo "$LIST_OF_SERVICES" | while read SERVICE_ID BAR NAME
    do
      echo "$SERVICE_ID) $NAME"
    done
    echo -e "\nChoose a service:"
    read SERVICE_ID_SELECTED
    if [[ $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
    then
      SERVICE_SELECTED=$($PSQL "select name from services where service_id=$SERVICE_ID_SELECTED")
    fi
  done

  echo -e "\nEnter customer phone number:"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "select name from customers where phone='$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "\nEnter customer name:"
    read CUSTOMER_NAME
    CUSTOMER=$($PSQL "insert into customers(phone, name) values ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')") 
  fi
  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")
  echo -e "\nEnter service time:"
  read SERVICE_TIME

  APPOINTMENT=$($PSQL "insert into appointments(customer_id, service_id, time) values('$CUSTOMER_ID', '$SERVICE_ID_SELECTED', '$SERVICE_TIME')")
  echo $(echo "I have put you down for a $SERVICE_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME." | sed 's/ +/ /g' -E)
}

MAIN