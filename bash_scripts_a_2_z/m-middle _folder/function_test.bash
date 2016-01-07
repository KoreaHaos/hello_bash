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

# e #<--- uncomment this and you
# hmmm <--- uncomment this and you will get an error.
quit

echo foo

function hmmm {
   echo it works
}
