FROM node:24-bookworm

RUN apt-get update && \
    apt-get install -y \
        vim \
        git \
        curl \
        less \
        procps \
        iputils-ping && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g @angular/cli

WORKDIR /workspace

CMD ["sleep", "infinity"]