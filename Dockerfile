FROM node:8

COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /usr/src/app/public && \
	mkdir /uploads && \
	ln -s /uploads /usr/src/app/public/uploads && \
	chown -R node:node /usr/src/app
WORKDIR /usr/src/app

VOLUME ["/usr/src/app", "/uploads"]

USER node
CMD ["/entrypoint.sh"]
