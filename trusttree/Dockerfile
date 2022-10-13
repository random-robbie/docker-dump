FROM python:3.8
WORKDIR /root
ENV HOME /root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install graphviz graphviz-dev pkg-config -y
RUN pip install pygraphviz
RUN pip install TrustTrees
CMD ["trusttrees"]
