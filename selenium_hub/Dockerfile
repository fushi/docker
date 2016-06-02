FROM alpine

RUN apk update && apk add \
    wget \
    openjdk8-jre

# Install Selenium Server
ENV SELENIUM_JAR selenium-server-standalone-2.53.0.jar
RUN wget http://selenium-release.storage.googleapis.com/2.53/${SELENIUM_JAR}

COPY hub_config.json /

CMD java -jar ${SELENIUM_JAR} -role hub -hubConfig hub_config.json
