FROM node:18-alpine

WORKDIR /app

COPY . .

COPY package.json package-lock.json ./
RUN npm install


ENV HOST=0.0.0.0
EXPOSE 3000

CMD ["npm", "start"]
