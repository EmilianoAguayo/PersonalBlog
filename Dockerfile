# Use multi-stage build to optimize the image size

# Stage 1: Build React app
FROM node:slim

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
