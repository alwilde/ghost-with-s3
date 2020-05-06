
<br />
<p align="center">
  <a href="https://github.com/wilderingrogue/ghost-with-s3">
    <img src="https://github.com/wilderingrogue/ghost-with-s3/blob/master/images/logo.png?raw=true" alt="Ghost With S3 Logo" width="1102" height="157">
  </a>

  <h3 align="center">Ghost with S3</h3>

  <p align="center">
    A <a href="">Ghost</a> Docker image with <a href="https://github.com/colinmeinke">colinmainke</a>/<a href="https://github.com/colinmeinke/ghost-storage-adapter-s3">ghost-storage-adapter-s3</a> bundled in.
    <br />
    Latest Ghost version: 2.31.1
    <br />
    <a href="https://cloud.docker.com/u/awildedocker/repository/docker/wilderingrogue/ghost-with-s3">Download from Dockerhub</a>
  </p>
</p>

## About & Downloading
I couldn't find an up to date Docker image which included some form of S3 adapter, thus I decided to bundle colinmainke's wonderful adapter with the official image and call it Ghost with S3. It does what it says on the tin.

This Dockerfile simply grabs the latest ghost image from Dockerhub, and runs NPM install for the storage adapter, before copying a new config file. The new config file isn't strictly necessary, but it's nice for completeness I guess.

## Usage
Create your own copy of config.json and fill in the values then:
`docker run -d --name ghost -p 3001:2368 -v /path/to/config.json:/var/lib/ghost/config.json wilderingrogue/ghost-with-s3:latest`

Then you'll be up and running. Refer to the [Ghost Docker](https://hub.docker.com/_/ghost) or [Ghost Documentation](https://ghost.org/docs/concepts/config/) for what else you can add to the command line environmnt variables or the config.json.

## Tags
The tag :latest will pull the latest working build. 
You can search the [tag list](https://hub.docker.com/repository/docker/awildedocker/ghost-with-s3/tags "tag list") to find specific versions of Ghost. These are few and far between as ghost-with-s3 does not get rebuilt for every update. 
A potentially incomplete list of versions include: 2.31.1

## License
This project uses the Unlicense. Refer to the LICENSE file, as well as the Ghost license and storage adapater license for more information.