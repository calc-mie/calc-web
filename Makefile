.PHONY: deploy build clean clean-all
deploy: build
	umask 002 && cp -vur --no-preserve=mode _site/* /usr/share/nginx/html

build:
	umask 002 && calc-web build

clean:
	calc-web clean

clean-all: clean
	rm -rv /usr/share/nginx/html/*
