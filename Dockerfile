FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y curl bash net-tools dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD [ "/bin/sh", "-c", "/bin/bash -c \"while true; do echo hello this is a jgreat shell container for troubleshooting; sleep 3600; done\"" ]
