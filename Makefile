.PHONY: deploy build clean
deploy: build
	umask 002 && cp -vur _site/. /usr/share/nginx/html

build:
	umask 002 && calc-web build

clean:
	calc-web clean
