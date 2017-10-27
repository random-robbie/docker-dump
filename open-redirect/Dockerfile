FROM node:stretch
LABEL maintainer="txt3rob@gmail.com"


# Update and grab all the bits we need
RUN apt-get update && \
  apt-get install -y wget nano curl git xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi \
  xfonts-scalable xfonts-cyrillic x11-apps clang libdbus-1-dev libgtk2.0-dev \
  libnotify-dev libgnome-keyring-dev libgconf2-dev libasound2-dev libcap-dev \
  libcups2-dev libxtst-dev libxss1 libnss3-dev gcc-multilib g++-multilib phantomjs locales

# Casperjs for the headless part
RUN npm install -g casperjs

# Grab Open-Redirect
RUN git clone https://github.com/random-robbie/open-redirect.git

# Enviromentals 
ENV DISPLAY :99
ENV DOCKER YES
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en


WORKDIR /open-redirect/
# Add XVFB start up script
ADD start.sh start.sh
RUN chmod 777 start.sh
# Command line time
CMD ["/bin/bash" ,"/open-redirect/start.sh"]
