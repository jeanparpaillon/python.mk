python.mk - Use Python as your interpreter in GNU make
======================================================

# Get started

Download `python.mk`:
```
$ curl https://raw.githubusercontent.com/jeanparpaillon/python.mk/master/python.mk > python.mk
```

Run bootstrap target:
```
$ make -f python.mk bootstrap
```

# Use it in your project

Example:

```make
include python.mk

all:
	print getcwd()
```

# Advanced

By default, the following code is run for each Python command: `from os import *`.

You can set your startup code by setting PYTHONSTARTUP variable, for instance:
```make
include python.mk

PYTHONSTARTUP = startup.py
```
