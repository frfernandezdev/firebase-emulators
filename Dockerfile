FROM node:alpine

RUN yarn global add firebase-tools
WORKDIR /app

COPY ./firebase.json ./
COPY ./entrypoint.sh ./

EXPOSE 9099 9000

CMD "./entrypoint.sh"
