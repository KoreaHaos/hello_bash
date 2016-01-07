#!/bin/bash          
echo 'Bash parameter passing test #1'

source get_set_value.bash

get_stored_value current_value

if [ -z "$current_value" ] 
then
    echo "No value stored. Enter a value:"
    read value_to_store
    set_stored_value "$value_to_store"
else
    echo "A value is already set."
fi


get_stored_value test

echo "Value set to : -->$test<-- "