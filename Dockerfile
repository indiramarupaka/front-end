# FROM node:17-alpine3.15

# COPY package.json package-lock.json .

# COPY ..

# RUN npm build

FROM node:alpine

WORKDIR /app
COPY package.json . 

RUN npm install

COPY . .

CMD ["npm", "start"]