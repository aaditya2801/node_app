FROM node:12.18.1

WORKDIR /app

COPY devops-monitoring/forethought-app/ /app

RUN npm install

CMD [ "node", "index.js" ]

EXPOSE 8080

