#!/bin/bash 
# source : http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-8.html

function quit {
   exit
}

function hello {
   echo Hello
}

function e {
    echo $1 
} 

hello
e World!
e
quit

echo foo