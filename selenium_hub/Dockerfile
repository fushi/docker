FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y \
    wget \
    openjdk-9-jre

# Install Selenium Server
ENV SELENIUM_JAR selenium-server-standalone-2.53.0.jar
RUN wget http://selenium-release.storage.googleapis.com/2.53/${SELENIUM_JAR}

COPY run.sh /

CMD bash /run.sh
