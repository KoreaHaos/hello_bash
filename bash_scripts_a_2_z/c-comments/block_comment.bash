#!/bin/bash
# from : http://stackoverflow.com/questions/947897/block-comments-in-a-shell-script

echo before comment
: <<'ENDofCOMMENTING'
bla bla
blurfl
ENDofCOMMENTING
echo after comment