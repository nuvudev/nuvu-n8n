FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    python3 \
    py3-pip \
    aws-cli \
    bash \
    curl \
    jq

USER node
