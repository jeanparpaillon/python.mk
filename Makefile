all: python.mk

python.mk: mk/python.mk
	cp -a $@ $@
