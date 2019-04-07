FROM linuxserver/ombi:latest

COPY health-check.sh /health-check.sh

RUN chmod 777 /health-check.sh