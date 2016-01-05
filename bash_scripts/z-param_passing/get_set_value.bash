#!/bin/bash          
echo "Hello from get_set_value.bash"

value_store="789"

function set_stored_value {
    if [ -z "$1" ]
    then
        value_store=""
    else
        value_store=$1
    fi
}

function get_stored_value {
    eval "$1=$value_store"
}