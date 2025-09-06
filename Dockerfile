
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN apk add --no-cache openjdk17 maven \
    && mvn clean package -f pom.xml


EXPOSE 3000
CMD ["npm", "start"]
