FROM n8nio/n8n:latest

USER root

SHELL ["/bin/sh", "-c"]

RUN apk update && apk add --no-cache \
    python3 \
    py3-pip \
    aws-cli \
    bash \
    curl \
    jq

USER node
