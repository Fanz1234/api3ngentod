FROM node:16.13.0

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nodejs -y

WORKDIR /app
COPY . /app
COPY package.json .
COPY . .
RUN npm install
EXPOSE 5000
CMD ["node", "index.js"]
