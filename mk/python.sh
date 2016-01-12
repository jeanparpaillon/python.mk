#!/bin/sh

startup=$(if test -n $PYTHONSTARTUP -a -e $PYTHONSTARTUP; then
	      cat $PYTHONSTARTUP;
	  else cat <<EOF 
from os import *

EOF
	  fi)

code="$startup
$@"

/usr/bin/python -c "$code"
