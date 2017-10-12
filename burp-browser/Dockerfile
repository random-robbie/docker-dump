FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

# Update and grab all the bits needed
RUN apt-get update
RUN apt-get install -y \
git \
xvfb \
x11vnc \
wget \
python \
python-numpy \
unzip \
menu \
net-tools \
geany \
menu \
nano \
curl \
openjdk-8-jre \
firefox \
ca-certificates \
bash \
lxde-core \
lxterminal \
tightvncserver \
xrdp

# Grab Burp and Jython and Jruby
RUN wget "https://portswigger.net/burp/releases/download?product=free&version=1.7.27&type=jar" -O  burpsuite_free_v1.7.27.jar
RUN wget "https://s3.amazonaws.com/jruby.org/downloads/9.1.13.0/jruby-complete-9.1.13.0.jar"
RUN wget "http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar" -O jython-standalone-2.7.0.jar

# Clean up to make image slightly smalled
RUN apt-get autoclean 
RUN apt-get autoremove
RUN rm -rf /var/lib/apt/lists/*

# Set user for VNC server (USER is only for build)
ENV USER root
# Set default password
COPY password.txt .
RUN cat password.txt password.txt | vncpasswd
RUN rm password.txt
# Expose VNC port
EXPOSE 5901

# Set XDRP to use TightVNC port
RUN sed -i '0,/port=-1/{s/port=-1/port=5901/}' /etc/xrdp/xrdp.ini

# Copy VNC script that handles restarts
COPY vnc.sh /opt/
RUN chmod 777 /opt/vnc.sh
ENTRYPOINT ["/opt/vnc.sh"]