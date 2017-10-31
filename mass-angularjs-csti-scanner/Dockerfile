FROM python:3.4
LABEL maintainer="txt3rob@gmail.com"

# update
RUN apt-get update && apt-get install locales git wget nano dos2unix -y

# Set default locale for the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

ADD scan /bin/scan
ADD mass-scan /bin/mass-scan
RUN chmod 777 /bin/scan
RUN chmod 777 /bin/mass-scan
ADD sub-mass /bin/sub-mass
RUN chmod 777 /bin/sub-mass

RUN git clone -b develop https://github.com/tijme/angularjs-csti-scanner.git
WORKDIR /angularjs-csti-scanner/
RUN pip install -r requirements.txt
RUN python setup.py install

WORKDIR /
RUN git clone https://github.com/Plazmaz/Sublist3r.git
WORKDIR /Sublist3r/
RUN pip install -r requirements.txt
WORKDIR /angularjs-csti-scanner/

ENTRYPOINT ["/bin/bash"]
