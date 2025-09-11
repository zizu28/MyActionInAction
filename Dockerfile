FROM alpine:latest
WORKDIR /app
COPY ./entrypoint.sh .
RUN apk add --no-cache dos2unix
RUN dos2unix ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
