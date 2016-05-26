xvfb-run --server-args=":99.0 -screen 0 2000x2000x16 -ac" \
java -jar ${SELENIUM_JAR} -role node -hub http://selenium-hub:4444/grid/register
