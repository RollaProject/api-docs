FROM node:14-slim

ENV NODE_ENV="production"

RUN mkdir -p /app
WORKDIR /app

COPY . ./
RUN npm install && \
    npm cache clean --force

EXPOSE 3000
ENTRYPOINT ["npm", "start"]
