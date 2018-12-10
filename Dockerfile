FROM node:latest

RUN npm install -g yarn && \
    yarn global add pm2 && \
    mkdir /app

USER 1000:1000
WORKDIR /app
COPY --chown=1000:1000 . /app

EXPOSE 3000
ENTRYPOINT ["yarn", "start:prod"]
