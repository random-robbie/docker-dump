FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
apt-get install -y \
git \
xvfb \
x11vnc \
wget \
python \
python-numpy \
unzip \
menu \
geany \
openbox \
net-tools \
geany \
menu \
nano \
curl \
openjdk-8-jre \
firefox \
ca-certificates \
bash

RUN cd /root && git clone https://github.com/kanaka/noVNC.git
WORKDIR /root/noVNC/utils/
RUN git clone https://github.com/kanaka/websockify websockify
WORKDIR /root


RUN wget "https://portswigger.net/burp/releases/download?product=free&version=1.7.27&type=jar" -o  burpsuite_free_v1.7.27.jar

RUN wget https://s3.amazonaws.com/jruby.org/downloads/9.1.13.0/jruby-complete-9.1.13.0.jar
RUN wget http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar -o jython-standalone-2.7.0.jar

WORKDIR /
ADD startup.sh startup.sh
RUN chmod 777 startup.sh

RUN chmod 0755 /startup.sh && \
apt-get autoclean && \
apt-get autoremove && \
rm -rf /var/lib/apt/lists/*


EXPOSE 8080:8080 6080:6080 5900:5900

ENTRYPOINT ["/startup.sh"]
