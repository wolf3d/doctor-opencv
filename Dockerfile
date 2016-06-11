# Pull base image
FROM debian:jessie

# Update packages
RUN apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y  && \

    apt-get update && apt-get install -y \
    build-essential cmake pkg-config \
    apt-get install libgtk2.0-dev python-dev python-numpy \
    libpng12-0 libpng12-dev libpng++-dev libpng3 libpnglite-dev \
    libpngwriter0-dev libpngwriter0c2 zlib1g-dbg zlib1g zlib1g-dev \
    pngtools libjasper-dev libjasper-runtime libjasper1 libjpeg8 \
    libjpeg8-dbg libjpeg62 libjpeg62-turbo-dev libjpeg-progs libtiff5-dev \
    libtiff4 libtiffxx0c2 libtiff-tools \
    openexr libopenexr6 libopenexr-dev \
    libatlas-base-dev gfortran \
    wget bzip2 curl unzip \
    libtbb2 libtbb-dev

run apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y

ADD build-script /build-script

RUN /bin/sh /build-script

#vim:ts=4
