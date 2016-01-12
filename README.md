python.mk - Use Python as your interpreter in GNU make
======================================================

# Why ?

Because it is possible. Anything else ?

Joke apart, while GNU make is really good at declaring targets
dependancies and dealing with them, writing generic rules, hacking
existing Makefile or even parallel builds, you may want to use a more
advanced programming language for writing rules, with the following
advantages:
* access to a huge library of tools
* easier syntax for dealing with strings
* ...

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

DIR = $(shell print getcwd())

all:
	print "$(DIR)"
```

# Advanced

By default, the following code is run for each Python command: `from os import *`.

You can set your startup code by setting PYTHONSTARTUP variable, for instance:
```make
include python.mk

PYTHONSTARTUP = startup.py
```
