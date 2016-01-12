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

# Imported modules

The following code is automatically loaded by interpreter:
* `from os import *`
