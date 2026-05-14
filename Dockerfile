FROM node:18.20.8-alpine3.21

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm", "run", "start" ]
