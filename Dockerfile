FROM debian:bullseye-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-requests \
    git \
    mc \
    emacs-nox \
    vim \
    silversearcher-ag \
    openssh-client \
    procps \
    htop \
    dnsutils \
    iputils-ping \
    net-tools \
    netcat \
    curl \
    wget \
    gnupg \
    sqlite3 \
    telnet \
    tcpdump \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN curl -sLO https://raw.githubusercontent.com/babashka/babashka/master/install \
    && chmod +x install \
    && ./install \
    && rm install

CMD ["bash"]
