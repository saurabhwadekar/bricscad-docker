
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ca-certificates \
    sudo \
    wget \
    curl \
    x11-utils \
    libx11-6 \
    libxext6 \
    libxrender1 \
    libxrandr2 \
    libxi6 \
    libxfixes3 \
    libxcursor1 \
    libxinerama1 \
    libxcomposite1 \
    libxdamage1 \
    libxtst6 \
    libglib2.0-0 \
    libgtk-3-0 \
    libnss3 \
    libfontconfig1 \
    libfreetype6 \
    libdbus-1-3 \
    libasound2t64 \
    libpulse0 \
    libgl1 \
    libegl1 \
    libglx0 \
    libopengl0 \
    libglu1-mesa \
    libsecret-1-0 \
    libxcb-cursor0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-util1 \
    libxcb-xinerama0 \
    mesa-utils \
    && rm -rf /var/lib/apt/lists/*

COPY bricscad.deb /tmp/bricscad.deb

RUN apt-get update && \
    apt-get install -y /tmp/bricscad.deb && \
    rm -f /tmp/bricscad.deb && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/bricscadv26"]