FROM python:3.7-slim-buster

RUN DEBIAN_FRONTEND=noninteractive \
  apt update && \
  apt install -y \
    curl \
    dnsutils \
    dstat \
    g++ \
    gcc \
    gzip \
    htop \
    less \
    libffi-dev \
    libjemalloc2 \
    liblz4-dev \
    librocksdb-dev \
    libsnappy-dev \
    libssl-dev \
    libstdc++-8-dev \
    libxml2-dev \
    libxslt-dev \
    libzstd-dev \
    nano \
    ncdu \
    net-tools \
    openssh-client \
    procps \
    rsync \
    vim \
    zip \
    zstd && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
ENV LD_PRELOAD /usr/lib/x86_64-linux-gnu/libjemalloc.so.2
