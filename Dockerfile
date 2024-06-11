FROM node:18 as dev-stage

WORKDIR /app

RUN addgroup --system docker && adduser --system --ingroup docker docker || true

RUN chown node:node /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN chmod +x node_modules/.bin/vite

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER node

EXPOSE 8080

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]

CMD [ "npm", "run", "dev"]
