#
# Python SimpleHTTPServer Dockerfile
#
# Demo Dockerfile
#

# Pull base image.
FROM ubuntu:12.04

MAINTAINER Ryan Lopopolo

# make sure the repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
# Install python
RUN apt-get install -y python python-dev

# Add files
ADD ./index.html /simpleserver/

# Set working directory
WORKDIR /simpleserver

# Expose ports
EXPOSE 8080

ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "8080"]

USER daemon
