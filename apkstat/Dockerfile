FROM alpine:3.6


# Add some essentials
RUN apk add --no-cache git curl wget bash python py-pip tar gzip ca-certificates python-dev libffi-dev openssl-dev gcc musl-dev nano
RUN apk add --no-cache \
		openjdk8-jre \
		openjdk8-jre-base \
		openjdk8-jre-lib \
		java-cacerts \
		openjdk8 


# Grab APKStat & tools
RUN git clone https://github.com/hexabin/APKStat.git
WORKDIR /APKStat/
RUN wget "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool" -O /usr/local/bin/apktool
RUN wget "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.2.4.jar" -O /usr/local/bin/apktool.jar
RUN chmod 777 /usr/local/bin/apktool
RUN chmod 777 apkstat.py

#Entry to bash then type apkstat com.whatever and it downloads.
ENTRYPOINT ["/bin/bash"]
