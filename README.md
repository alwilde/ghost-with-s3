<br />
<p align="center">
  <a href="https://github.com/awildegit/ghost-with-s3">
    <img src="https://github.com/awildegit/ghost-with-s3/blob/master/images/logo.png" alt="Ghost With S3 Logo" width="1102" height="157">
  </a>

  <h3 align="center">Ghost with S3</h3>

  <p align="center">
    A <a href="">Ghost</a> Docker image with <a href="https://github.com/colinmeinke">colinmainke</a>/<a href="https://github.com/colinmeinke/ghost-storage-adapter-s3">ghost-storage-adapter-s3</a> bundled in.
    <br />
    Builds with Ghost version: 2.31.1
    <br />
    <a href="https://cloud.docker.com/u/awildedocker/repository/docker/awildedocker/ghost-with-s3">Download from Dockerhub</a>
  </p>
</p>

## About & Downloading
I couldn't find an up to date Docker image which included some form of S3 adapter, thus I decided to bundle colinmainke's wonderful adapter with this one. 

The Dockerfile is a copy of the Ghost Dockerfile with a few tweaks to also download the adpater and get it set up. 

## Todo
Set up build tags for specific Ghost versions. 

## License
This project uses the Unlicense. Refer to the LICENSE file, as well as the Ghost license and storage adapater license for more information.

