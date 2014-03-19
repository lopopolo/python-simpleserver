python-simpleserver
===================

Experiments with Docker and python.

This `Dockerfile` builds an image that runs a python `SimpleHTTPServer`
serving a single static asset.

To build:

```sh
sudo docker build -t simpleserver .
```

To run:

```sh
sudo docker run -p 8080:8080 simpleserver
```

`index.html` should be accessible over HTTP on port 8080.
