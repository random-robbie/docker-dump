FROM python:stretch
LABEL maintainer="txt3rob@gmail.com"

# update
RUN apt-get update && apt-get install locales git wget nano -y

# Set default locale for the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

ADD scan /bin/scan
RUN chmod 777 /bin/scan

RUN pip install git+https://github.com/tijme/angularjs-csti-scanner.git


ENTRYPOINT ["/bin/bash"]
