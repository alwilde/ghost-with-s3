FROM ghost:latest
MAINTAINER awildegit

# bring in package.json from ghost 1.21
# required to build the s3 storage adapter
COPY ./package.json /var/lib/ghost/package.json

# install s3 storage driver for backend storage of static content
WORKDIR /var/lib/ghost
RUN mkdir -p ./content.orig/adapters/storage/s3 && \
    npm install ghost-storage-adapter-s3 && \
    cp -r ./node_modules/ghost-storage-adapter-s3/* ./content.orig/adapters/storage/s3

# the only modification to this file is the storage adapter addition
# the remainder of the variables are passed via environment vars
COPY ./config.json /var/lib/ghost/config.production.json