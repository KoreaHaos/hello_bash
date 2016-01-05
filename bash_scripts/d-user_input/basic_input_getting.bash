#!/bin/bash
# source : http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-10.html

# First ask for the user's name.
echo Please, enter your name
# Then get input using the 'read' command followed by a variable to store the input in.
read NAME
# Now output the variable using the echo command.
echo "Hi $NAME!"

# Here we read in more than one word.
echo Please, enter your firstname and lastname
read FN LN 
echo "Hi! $LN, $FN !"