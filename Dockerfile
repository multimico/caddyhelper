FROM ubuntu:22.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y --no-install-recommends \
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
    debian-keyring \
    debian-archive-keyring \
    apt-transport-https \ 
    gpg \ 
    && \
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg && \
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list && \
    apt update && \
    apt install -y caddy \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /caddy
COPY templates /caddy/templates

USER caddy

