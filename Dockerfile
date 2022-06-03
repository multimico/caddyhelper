FROM caddy:2.5.1

RUN apk add --no-cache --update \
    vim \
    git \
    openssh-client \
    less \
    jq \
    yq \
    iputils \
    curl \
    gettext \
    python3 \
    py3-pip \
    py3-curl \
    py3-wheel \
    py3-setuptools \
    nodejs \ 
    npm

COPY templates /caddy/templates
