FROM node:18-alpine
WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install astro

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npx", "astro", "dev", "--port", "3000", "--host", "0.0.0.0"]
