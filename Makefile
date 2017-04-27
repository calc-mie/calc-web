DEPLOY_DIR=/srv/calc-web

.PHONY: deploy build permission clean clean-all
deploy: build
	cp -vur _site/* $(DEPLOY_DIR)

build:
	calc-web build

permission:
	find $(DEPLOY_DIR) -type d | xargs chmod g+w

clean:
	calc-web clean

clean-all: clean
	rm -rv $(DEPLOY_DIR)/*
