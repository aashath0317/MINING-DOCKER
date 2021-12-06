FROM vincreator/eunhamirror:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY c2ptech.rar .
RUN apt-get install unrar
RUN unrar x c2ptech.rar -pc2ptech

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
    libnuma-dev \
    rar \
 && mkdir -p /home/stuff



# Run bot script:
CMD ["bash","run.sh"]
