FROM node:16.9.1

WORKDIR /usr/app

COPY package*json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm","run","dev"]