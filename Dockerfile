FROM node:22.23.3-alpine3.24
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
ENTRYPOINT [ "node" ]
CMD ["src/index.js"]
EXPOSE 3000