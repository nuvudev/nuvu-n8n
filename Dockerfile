FROM node:20-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    bash \
    curl \
    jq \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --break-system-packages awscli

RUN npm install -g n8n

RUN useradd -m -s /bin/bash node || true

USER node
WORKDIR /home/node

ENV N8N_USER_FOLDER=/home/node/.n8n

EXPOSE 5678

ENTRYPOINT ["n8n"]
