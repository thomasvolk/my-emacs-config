CONFIG_FILES=init.el ocaml.el

all: install

install:
	mkdir -p $(HOME)/.emacs.d
	cp -v $(CONFIG_FILES) $(HOME)/.emacs.d
