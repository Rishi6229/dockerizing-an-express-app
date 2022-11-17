FROM node:16

#create app directory
WORKDIR /usr/src/app

#install app depedencies
#A wildcard is used to ensure both package.json AND package-lock-json
#wher available(nom@5+)
COPY package*.json ./
RUN npm install
#if you are building your code production
#RUN npm ci --only=production

#Bundle app source

COPY . .
EXPOSE 8080
CMD [ "node" , "server.js"]
