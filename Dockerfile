FROM n8nio/n8n:1.97.1
USER root
RUN apk update && \
    apk add --no-cache ffmpeg curl wget && \
    rm -rf /var/cache/apk/*
USER node
