#!/bin/sh

startup=$(cat <<EOF 
from os import *
from setuptool import *
EOF
       )

/usr/bin/python -c "$startup; $@"
