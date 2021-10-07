ARG DOCKER_BASE_IMAGE=ubuntu:16.04

# tool chain image
FROM ${DOCKER_BASE_IMAGE}

RUN apt-get update && \
    apt-get install --yes keepalived && \
    rm -rf /var/lib/apt/lists/* /tmp/*

COPY keepalived.conf /etc/keepalived/

CMD rm -rf /var/run/keepalived.pid && keepalived -f /etc/keepalived/keepalived.conf -n -l -D
