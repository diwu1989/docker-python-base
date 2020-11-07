FROM python:3.7-slim-buster

RUN DEBIAN_FRONTEND=noninteractive \
  apt update && \
  apt install -y \
    curl \
    dstat \
    g++ \
    gcc \
    gzip \
    htop \
    less \
    libffi-dev \
    libjemalloc2 \
    liblz4-dev \
    libsnappy-dev \
    libstdc++-8-dev \
    nano \
    ncdu \
    net-tools && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
ENV LD_PRELOAD /usr/lib/x86_64-linux-gnu/libjemalloc.so.2
