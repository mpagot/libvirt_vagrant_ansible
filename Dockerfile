# syntax=docker/dockerfile:experimental

FROM opensuse/tumbleweed:latest
WORKDIR /root
COPY os_setup.sh .
COPY requirements.txt .

RUN zypper ref &&  \
    ./os_setup.sh && \
    zypper clean --all
