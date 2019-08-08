FROM node

ARG arch=arm
ENV ARCH=$arch

RUN apt-get update \
    && apt-get install -y \
    && npm install -g grunt-cli

WORKDIR /usr/src/app
COPY nodeserver.js .
COPY Source/ .

RUN npm install \
    && grunt

EXPOSE 8888

CMD ["node","nodeserver.js"]
