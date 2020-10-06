# codeceptjs-multimocha-docker

Most part of the Dockerfile is stolen from the official [CodeceptJS Docker Image](https://hub.docker.com/r/codeception/codeceptjs). I added a custom package.json and install codecept over NPM with `mocha-multi`, `mocha-junit-reporter` and `puppeteer`. So you can't mount in an own package.json into the volume. Generally you only need to mount in the codecept config and the tests.

Build

```sh
docker build . -t codecept-mocha-multi
```

Run codecept tests

```sh
docker run -it --rm -v /path/to/your/codecept/folder:/tests codecept-mocha-multi:latest
```
