FROM ubuntu:18.04

RUN apt update && apt install -y \
  git \
  emacs \
  fish \
  jq \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN git clone --depth 1 https://github.com/momozow/dots.git \
  && mv dots/.emacs.d ./ \
  && mv dots/.config ./ \
  && rm -fr dots

RUN apt update && apt install -y \
  wget \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget -q -O - https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz \
  | tar -C /usr/local -xzf - \
  && echo set -x PATH \$PATH /usr/local/go/bin >> /root/.config/fish/config.fish
