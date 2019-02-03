FROM node:8.15.0-jessie

WORKDIR /home/node/app
COPY package*.json ./
RUN npm install

COPY VERSION /
COPY . ./

EXPOSE 3000

CMD ["npm", "start"]
