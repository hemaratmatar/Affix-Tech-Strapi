FROM node:16-alpine

WORKDIR /usr/srv/app

COPY . .

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn 



EXPOSE 1337

CMD [ "yarn", "develop" ]