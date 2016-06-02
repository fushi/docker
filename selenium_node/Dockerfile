FROM ubuntu

RUN apt-get update -y && apt-get install -y \
    wget \
    openjdk-9-jre

# Add Chrome to the apt-get list
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

RUN apt-get update -y && apt-get install -y \
    google-chrome-stable \
    firefox \
    xvfb \
    unzip

# Install Selenium Server
ENV SELENIUM_JAR selenium-server-standalone-2.53.0.jar
RUN wget http://selenium-release.storage.googleapis.com/2.53/${SELENIUM_JAR}

RUN wget http://chromedriver.storage.googleapis.com/2.21/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip -d /usr/local/bin

COPY node_config.json /

CMD xvfb-run --server-args=":99.0 -screen 0 2000x2000x16 -ac" \
    java -jar ${SELENIUM_JAR} -role node -hub http://selenium-hub:4444/grid/register -nodeConfig node_config.json
