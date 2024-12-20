TARGET := $(HOME)/.config/nvim
TMUX_TARGET := $(HOME)/.config
SRC := $(abspath .)

.PHONY: install clean

install:
	rm -rf $(TARGET)
	mkdir -p $(TARGET)
	cp -R $(SRC)/nvim/. $(TARGET)
	cp $(SRC)/.tmux.conf $(TMUX_TARGET)/.tmux.conf

clean:
	rm -rf $(TARGET)
	rm -rf $(TMUX_TARGET)/.tmux.conf
