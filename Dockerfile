FROM ghost:latest
MAINTAINER Al Wilde

RUN npm install ghost-storage-adapter-s3
RUN mkdir -p ./content/adapters/storage
RUN cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3