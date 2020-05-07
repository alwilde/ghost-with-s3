
<br />
<p align="center">
  <a href="https://github.com/wilderingrogue/ghost-with-s3">
    <img src="https://github.com/wilderingrogue/ghost-with-s3/blob/master/images/logo.png?raw=true" alt="Ghost With S3 Logo" width="1102" height="157">
  </a>

  <h3 align="center">Ghost with S3</h3>

  <p align="center">
    A <a href="https://hub.docker.com/_/ghost">Ghost</a> Docker image with <a href="https://github.com/colinmeinke">colinmainke</a>/<a href="https://github.com/colinmeinke/ghost-storage-adapter-s3">ghost-storage-adapter-s3</a> bundled in.
    <br />
    Latest Ghost version: 3.15.0
    <br />
    <a href="https://hub.docker.com/r/wilderingrogue/ghost-with-s3">Download from Dockerhub</a>
  </p>
</p>

## About & Downloading
I couldn't find an up to date Docker image which included some form of S3 adapter, thus I decided to bundle colinmainke's wonderful adapter with the official image and call it Ghost with S3. It does what it says on the tin.

This Dockerfile simply grabs the latest ghost image from Dockerhub, and runs NPM install for the storage adapter, before copying a new config file. The new config file isn't strictly necessary, but it's nice for completeness I guess.

## Usage
Create your own copy of config.json and fill in the values then:
`docker run -d --name ghost -p 3001:2368 -v /path/to/config.json:/var/lib/ghost/config.json wilderingrogue/ghost-with-s3:latest`

Alternatively, instead of binding to the config file to set your various settings, you can specify them directly through environment variables. Here's a docker-compose example you can apply to the command line if you so choose.

```
version: '3.1'

services:

  ghost:
    image: wilderingrogue/ghost-with-s3:latest
    restart: always
    ports:
      - 8080:2368
    environment:
      database__client: mysql
      database__connection__host: db
      database__connection__user: root
      database__connection__password: example
      database__connection__database: ghost
      storage__active: "s3"
      AWS_ACCESS_KEY_ID: ""
      AWS_SECRET_ACCESS_KEY: ""
	  AWS_DEFAULT_REGION: ""
	  GHOST_STORAGE_ADAPTER_S3_PATH_BUCKET: ""
	  GHOST_STORAGE_ADAPTER_S3_ASSET_HOST: ""
	  GHOST_STORAGE_ADAPTER_S3_PATH_PREFIX: ""
	  GHOST_STORAGE_ADAPTER_S3_ENDPOINT: ""
	  GHOST_STORAGE_ADAPTER_S3_FORCE_PATH_STYLE: ""
  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: example`
```

Then you'll be up and running. Refer to the [Ghost Docker](https://hub.docker.com/_/ghost) or [Ghost Documentation](https://ghost.org/docs/concepts/config/) for what else you can add to the command line environment variables or the config.json.

## Tags
The tag :latest will pull the latest working build. 
You can search the [tag list](https://hub.docker.com/repository/docker/wilderingrogue/ghost-with-s3/tags "tag list") to find specific versions of Ghost. These are few and far between as ghost-with-s3 does not get rebuilt for every update. 
A potentially incomplete list of versions include: 3.15.0, 3.14.0, 2.38.1, 2.31.1

## License
This project uses the Unlicense. Refer to the LICENSE file, as well as the Ghost license and storage adapter license for more information.