FROM n8nio/n8n:1.97.1   # gleiche Version wie dein bestehender Service
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg curl wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
USER node
