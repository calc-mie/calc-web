.PHONY: deploy build permission clean clean-all
deploy: build
	cp -vur _site/* /usr/share/nginx/html

build:
	calc-web build

permission:
	find /usr/share/nginx/html -type d | xargs chmod g+w

clean:
	calc-web clean

clean-all: clean
	rm -rv /usr/share/nginx/html/*
