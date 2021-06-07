# Busybox base image from https://hub.docker.com/r/arm32v7/busybox
FROM arm32v7/alpine:3.10

# Copy our config file into the image
COPY firstBoot.sh /firstBoot.sh

# Download and install the latest noip DUC
RUN chmod +x /firstBoot.sh
RUN apk add --update make gcc g++
RUN mkdir /usr/local/src
RUN cd /usr/local/src && wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz && tar xzf noip-duc-linux.tar.gz

# Makes the client and installs it, prompting for client details on first run
# TBC why the below isn't working... run it manually on first boot for now...
#ENTRYPOINT ["/firstBoot.sh"]
