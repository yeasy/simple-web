simple_web
===
A simple web server that outputs the IP addresses of the source and destination, very useful for testing loadbalancer to show real requests.

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/simple-web/blob/master/Dockerfile)

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/simple-web` GitHub repo](https://github.com/yeasy/simple-web).

# What is simple-web?
[simple-web](https://github.com/yeasy/simple-web) is a simple web to show the source and destination IP addresses of the received requests information, written in python.


# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/simple-web/](https://registry.hub.docker.com/u/yeasy/simple-web/).


## In Dockerfile
```sh
FROM yeasy/simple-web:latest
```

## Local Run
```sh
$ docker run --rm -it -p 80:80 yeasy/simple-web:latest
```

# Which image is based on?
The image is based on python:2.7

# What has been changed?
Add the index.py code.


# Supported Docker versions

This image is officially supported on Docker version 1.7.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/simple-web/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/simple-web/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/simple-web/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
