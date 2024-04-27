FROM node:21.7.3-alpine3.18 AS build

RUN npm install -g pnpm

WORKDIR /maximizeaifront

COPY package*.json ./

RUN pnpm install

COPY . .

RUN pnpm build

EXPOSE 4173

CMD ["pnpm", "preview"]
