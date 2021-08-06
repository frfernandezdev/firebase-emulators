FROM node:alpine
WORKDIR /app
RUN yarn global add firebase-tools
COPY ./firebase.json .
COPY ./firebaserc .

CMD ["firebase", "emulators:start"]
