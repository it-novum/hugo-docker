# Pull base image
FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive
ENV HUGO_VERSION 0.115.4
ENV ARCH amd64
#ENV ARCH arm64

#Install latest patches
RUN apt-get update && apt-get install -y \
    && apt-get install -y wget

#Obtain the package
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-${ARCH}.deb

#Install it
RUN dpkg -i hugo_${HUGO_VERSION}_linux-${ARCH}.deb

WORKDIR /src/
CMD ["hugo"]

#Install dependencies if needed
RUN apt-get install -y -f
