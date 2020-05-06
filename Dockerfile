FROM ghost:2.31.1
#^^ Grab the latest offical ghost image. Way easier than building it from scratch as we did before
#Might as well set myself as the maintainer
MAINTAINER Al Wilde
#Begin S3 install by setting our workdir
WORKDIR /var/lib/ghost
##NPM install ghost-storage-adapter-s3 and link the 2 directories
RUN npm install -g ghost-storage-adapter-s3 && \
	ln -s /usr/local/lib/node_modules/ghost-storage-adapter-s3 ./current/core/server/adapters/storage/s3

#Copy a new default config to include our storage adapter
RUN rm config.production.json
COPY config.json config.production.json
COPY config.json config.json