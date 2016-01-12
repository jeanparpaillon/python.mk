# Automated update.

PYTHON_MK_BUILD_DIR ?= .python.mk.build

python.mk: bootstrap
	git clone https://github.com/jeanparpaillon/python.mk $(PYTHON_MK_BUILD_DIR)
	cd $(PYTHON_MK_BUILD_DIR) && $(MAKE)
	cp $(PYTHON_MK_BUILD_DIR)/python.mk ./python.mk
	cp $(PYTHON_MK_BUILD_DIR)/python.sh ./python.sh
	rm -rf $(PYTHON_MK_BUILD_DIR)

.PHONY: bootstrap
bootstrap: ;
