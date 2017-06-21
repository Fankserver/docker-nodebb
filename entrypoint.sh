#!/bin/bash
if [ ! -d /usr/src/app/node_modules ]
then
	git clone -b v1.5.x https://github.com/NodeBB/NodeBB.git /tmp/nodebb
	cp -r /tmp/nodebb/* /usr/src/app/
	rm /tmp/nodebb -rf

	npm install --production && npm cache clean --force
	./nodebb setup $@
fi

./nodebb start $@
