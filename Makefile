CONFIG_FILES=*.el

all: install

install:
	mkdir -p $(HOME)/.emacs.d
	cp -v $(CONFIG_FILES) $(HOME)/.emacs.d
