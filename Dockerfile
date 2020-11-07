FROM python:3.7-slim-buster

RUN DEBIAN_FRONTEND=noninteractive \
  apt update && \
  apt install \
    curl \
    dstat \
    g++ \
    gcc \
    gzip \
    htop \
    less \
    libhiredis-dev \
    libjemalloc2 \
    liblz4-dev \
    libpq-dev \
    libsnappy-dev \
    libstdc++-8-dev \
    nano \
    ncdu \
    net-tools \
    python3-dev && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
ENV LD_PRELOAD /usr/lib/x86_64-linux-gnu/libjemalloc.so.2
