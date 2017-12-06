INSTALL_PATH=/usr/local/bin
.PHONY: build clean install
build:
	stack build

clean:
	stack clean

install:
	stack build
	sudo install $(shell stack exec which calc-web) $(INSTALL_PATH)
