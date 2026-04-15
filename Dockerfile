FROM node:20-alpine
RUN apk add --no-cache dumb-init
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev
COPY . .
EXPOSE 3000
USER node
CMD ["node", "server.cjs"]
