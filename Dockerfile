FROM node:16.13.0

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nodejs -y

COPY package.json .

WORKDIR /app

COPY . /app

COPY . .

RUN npm install

EXPOSE 6892

CMD ["node", "index.js"]
