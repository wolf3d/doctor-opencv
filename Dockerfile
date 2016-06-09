# Pull base image
FROM debian:jessie

# Update packages
RUN apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y 

RUN apt-get update && apt-get install -y \
    build-essential cmake pkg-config \
    libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev \
    libgtk2.0-dev \
    libatlas-base-dev gfortran \
    python2.7-dev python3-dev wget curl unzip && \
    wget https://bootstrap.pypa.io/get-pip.py && python2.7 get-pip.py && \
    pip install numpy

RUN apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y

ADD build-script /build-script

RUN /bin/sh /build-script

#vim:ts=4
