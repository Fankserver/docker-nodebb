#!/bin/bash
set -e
if [ ! -d /usr/src/app/node_modules ]
then
	git clone -b v1.5.x https://github.com/NodeBB/NodeBB.git /usr/src/app/

	npm install --production && npm cache clean --force
	./nodebb setup $@
else
	git pull

	./nodebb upgrade $@
fi

node loader.js --silent false --daemon false
