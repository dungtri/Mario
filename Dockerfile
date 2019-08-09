FROM node:12.8.0-alpine

ARG arch=arm
ENV ARCH=$arch

WORKDIR /usr/src/app
COPY Source/ .
COPY nodeserver.js .

EXPOSE 8888

CMD ["node","nodeserver.js"]
