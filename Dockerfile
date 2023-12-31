FROM node:lts-alpine

WORKDIR /app

COPY package.json yarn.lock* /app/

RUN yarn install

COPY . /app

EXPOSE 80

CMD [ "yarn", "start" ]