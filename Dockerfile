From node:18 as desp-stage

WORKDIR /app
COPY ./app/package.json ./app/package-lock.json  ./
RUN npm install --production -no-progress

From node:18 as runtime-stage

WORKDIR /app
COPY --from=desp-stage /app/node_modules /node_modules
COPY ./app/server.js ./
CMD ["npm", "start"]
