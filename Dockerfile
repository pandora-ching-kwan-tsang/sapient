FROM node:16.16.0

WORKDIR /app

COPY package.json .

RUN npm install

COPY index.js . 
# or COPY . . 

EXPOSE 3000

CMD [ "node", "index.js" ]