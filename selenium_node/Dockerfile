FROM selenium-hub

# Add Chrome to the apt-get list
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

RUN apt-get update -y && apt-get install -y \
    google-chrome-stable \
    firefox \
    xvfb \
    unzip

RUN wget http://chromedriver.storage.googleapis.com/2.21/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip -d /usr/local/bin

COPY run.sh /
