# Pull base image
FROM debian:jessie

# Update packages
RUN apt-get update && apt-get install -y \
    build-essential cmake pkg-config \
    libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev \
    libgtk2.0-dev \
    libatlas-base-dev gfortran \
    python2.7-dev python3-dev \

#vim:ts=4
