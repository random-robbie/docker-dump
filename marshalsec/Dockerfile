FROM jamesdbloom/docker-java8-maven
RUN mkdir -p /sploit/
WORKDIR /sploit/
RUN git clone https://github.com/mbechler/marshalsec.git
WORKDIR /sploit/marshalsec/
RUN mvn -f /sploit/marshalsec/pom.xml clean package -DskipTests
CMD ["bash"]
