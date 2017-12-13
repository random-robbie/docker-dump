FROM golang:latest
LABEL maintainer="txt3rob@gmail.com"

# update
RUN apt-get update && apt-get install nano git locales dnsutils python-requests python-dnspython python-argparse dos2unix -y

# Set default locale for the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
WORKDIR /go/src/
RUN git clone https://github.com/haccer/subjack.git
WORKDIR /go/src/subjack/
RUN go build subjack.go
RUN chmod -R 777 /go/src/
WORKDIR /go/src/
RUN git clone https://github.com/Plazmaz/Sublist3r.git
ADD subjackit /bin/subjackit
RUN chmod 777 /bin/subjackit
ENTRYPOINT ["/bin/bash"]
