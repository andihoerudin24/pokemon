FROM node:14


WORKDIR /app


COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]


RUN npm install --production --silent && mv node_modules ../


COPY . .

EXPOSE 3000

CMD ["npm","start"]
