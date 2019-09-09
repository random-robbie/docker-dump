FROM python:2.7-stretch
RUN apt-get update && apt-get upgrade -y
RUN apt-get install graphviz libgraphviz-dev pkg-config -y
WORKDIR /root/
RUN git clone https://github.com/mandatoryprogrammer/TrustTrees.git
WORKDIR /root/TrustTrees/
RUN pip install -r requirements.txt
RUN pip install -r requirements-dev.txt
RUN pip install TrustTrees
CMD ["trusttrees.py --target $1"]
