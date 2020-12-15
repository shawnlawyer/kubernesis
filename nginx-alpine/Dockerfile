FROM alpine:3.10
EXPOSE 80
RUN apk add --update bash nginx && rm -rf /var/cache/apk/*
COPY . /
CMD ["nginx", "-g", "daemon off;"]
