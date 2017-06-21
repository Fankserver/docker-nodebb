FROM node:6

COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /usr/src/app && \
	chown -R node:node /usr/src/app
WORKDIR /usr/src/app

VOLUME ["/usr/src/app"]

USER node
ENTRYPOINT ["/entrypoint.sh"]
