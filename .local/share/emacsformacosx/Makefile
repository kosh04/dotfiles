# Tips and Tricks: Running Emacs.app from the command line
# https://emacsformacosx.com/tips

EMACS_APP ?= /Applications/Emacs.app

TARGET = bin/emacs \
	bin/emacs-nw \
	bin/emacsclient

.PHONY: all
all: $(TARGET)
	ls -lh bin
	$(info INFO: Append to .bashrc: PATH=$$PATH:${PWD}/bin)

bin/emacs:
	ln -s $(EMACS_APP)/Contents/MacOS/Emacs $@

bin/emacs-nw:
	ln -s $(EMACS_APP)/Contents/MacOS/emacs-nw $@

bin/emacsclient:
	ln -s $(EMACS_APP)/Contents/MacOS/bin/emacsclient $@

.PHONY: clean
clean:
	$(RM) $(TARGET)
