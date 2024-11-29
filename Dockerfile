FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY bundle.js ./

EXPOSE 7000

ENTRYPOINT [ "node" ]

CMD [ "bundle.js" ]