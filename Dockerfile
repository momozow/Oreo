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
  