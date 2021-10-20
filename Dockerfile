FROM node:alpine

RUN yarn global add firebase-tools
WORKDIR /srv/app

VOLUME /srv/app

COPY ./docker-entrypoint.sh ./

EXPOSE 9099 9000

CMD "./docker-entrypoint.sh"
