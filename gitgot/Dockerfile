ROM python:3.6
RUN apt-get update && apt-get upgrade -y
RUN apt-get install libfuzzy-dev nano ssdeep -y
RUN git clone https://github.com/BishopFox/GitGot.git
WORKDIR /GitGot/
RUN pip3 install -r requirements.txt
CMD ["bash"]
