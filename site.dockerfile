FROM alpine:latest

RUN mkdir /app

COPY site /app

CMD [ "/app/site" ]