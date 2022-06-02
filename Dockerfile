FROM ubuntu:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    openssh-client \
    git \
    less \
    vim-tiny \
    curl \
    jq \
    iputils-ping \
    python3 \
    python3-wheel \
    python3-pip \
    python3-setuptools \
    python3-pycurl \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -d /caddy caddy

WORKDIR /caddy

USER caddy

