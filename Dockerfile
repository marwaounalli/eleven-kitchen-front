FROM node:16-alpine3.11

# this is a development Dockerfile
# and is not intended for production use
WORKDIR /var/www/ui
COPY . /var/www/ui

RUN yarn install


RUN yarn run build
CMD yarn start

