FROM python:alpine

MAINTAINER takuya.wakisaka@moldweorp.com

# install pip
RUN wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm get-pip.py

RUN apt-get update && apt-get install -y --no-install-recommends \
    libffi-dev \
    libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ \
    && pip install --no-cache-dir sql-feed-graphite
