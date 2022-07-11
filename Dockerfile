FROM php:7 as base
WORKDIR /app
COPY . /app

FROM base AS prod

EXPOSE 8080
CMD [ "php", "-S", "0.0.0.0:8080" ]
