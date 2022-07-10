FROM node:14 AS dev

WORKDIR /

RUN yarn install
RUN yarn build

FROM nginx:alpine
COPY --from=dev /src/dist /usr/share/nginx/html
EXPOSE 80
