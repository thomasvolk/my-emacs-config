TRG=~/.config/emacs
DOOM=~/.config/doom

all: sync

$(TRG):
	git clone --depth 1 https://github.com/doomemacs/doomemacs $(TRG)
	$(TRG)/bin/doom install

config: $(TRG)
	cp config.el init.el packages.el $(DOOM)

sync: config
	$(TRG)/bin/doom sync
