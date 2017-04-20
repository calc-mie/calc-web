.PHONY: deploy build clean clean-all
deploy: build
	cp -vur _site/* /usr/share/nginx/html

build:
	calc-web build

clean:
	calc-web clean

clean-all: clean
	rm -rv /usr/share/nginx/html/*
