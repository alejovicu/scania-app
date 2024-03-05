# SCANIA hello world app

This is just a hello world page


## Contents

* Static website

    http://localhost:8080

* API to check if the service is alive

    http://localhost:8080/api/v1/health


## Deploy

You can deploy it with

```sh
yarn install
yarn dev
```

## Build and run docker image locally

```sh
docker build -t alejovicu/scania-app:local .
docker run -d --name scania-app -p 8080:8080 alejovicu/scania-app:local
```