FROM node as builder

WORKDIR /app

COPY package.json package-lock.json app.js ./

RUN npm install --prod

FROM astefanutti/scratch-node

COPY --from=builder /app /

ENTRYPOINT ["node", "app.js"]

EXPOSE 3000