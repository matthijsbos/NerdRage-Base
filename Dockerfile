FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
   && apt-get -y upgrade \
   && apt-get -y install --no-install-recommends \
         python3 \
         python3-pip \
         python3-cryptography \
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*

RUN pip3 install cryptography

ENV DEBIAN_FRONTEND=dialog
