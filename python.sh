#!/bin/sh

startup=$(cat <<EOF 
from os import *

EOF
       )

/usr/bin/python -c "$startup; $@"
