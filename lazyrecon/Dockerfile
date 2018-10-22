FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get dist-upgrade -y && apt-get install curl git wget python-dev python3-dev ruby sudo gcc unzip nmap netcat net-tools dnsutils -y
RUN curl https://raw.githubusercontent.com/nahamsec/bbht/master/install.sh | sh
WORKDIR /root/tools/lazyrecon/
ENTRYPOINT ["/bin/bash"]
