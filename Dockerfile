# Busybox base image from https://hub.docker.com/r/arm32v7/busybox
FROM arm32v7/alpine:3.10

# Copy our config file into the image - comment this out on first build
COPY firstBoot.sh /firstBoot.sh

# Download and install the latest noip DUC
RUN apk add --update make gcc g++
RUN mkdir /usr/local/src
RUN cd /usr/local/src && wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz && tar xzf noip-duc-linux.tar.gz

# Comment this out if you have a config file already
ENTRYPOINT ["/firstBoot.sh"]
