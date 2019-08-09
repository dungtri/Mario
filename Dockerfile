FROM node

ARG arch=arm
ENV ARCH=$arch

WORKDIR /usr/src/app
COPY nodeserver.js .
COPY Source/ .

EXPOSE 8888

CMD ["node","nodeserver.js"]
