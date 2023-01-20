FROM node:16.13.0

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nodejs -y

COPY package.json .

RUN npm install && npm install qrcode-terminal

WORKDIR /app

COPY . /app

COPY . .

EXPOSE 5000

CMD ["nodemon", "index.js"]
