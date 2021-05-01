#Base Image 
FROM node:alpine

#Install required dependencies
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default Command
CMD ["npm","start"]