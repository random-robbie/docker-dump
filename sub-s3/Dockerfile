FROM python:3.4
LABEL maintainer="txt3rob@gmail.com"

# update
RUN apt-get update && apt-get install awscli nano git locales dnsutils python-requests python-dnspython python-argparse dos2unix -y 

# Set default locale for the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
RUN git clone https://github.com/Plazmaz/Sublist3r.git
WORKDIR /Sublist3r/
RUN pip install -r requirements.txt
RUN pip install termcolor eventlet
ADD bucketeer.sh bucketeer.sh
ADD poc.txt poc.txt
ADD entrypoint.sh /bin/entrypoint.sh
RUN chmod 777 /bin/entrypoint.sh
RUN chmod 777 bucketeer.sh
ENTRYPOINT ["/bin/entrypoint.sh"]
