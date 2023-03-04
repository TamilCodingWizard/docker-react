#Base image
FROM node:19-alpine
#working directory
WORKDIR /app
#copy package.json to /app
COPY package.json .
#npm install
RUN npm install
#copy all files
COPY . .
#port expose
EXPOSE 3000
#run the code
CMD [ "npm","start" ]