FROM alpine:latest
WORKDIR /app
COPY ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh
RUN chown -R root:root .
ENTRYPOINT ["./entrypoint.sh"]
