# Container image that runs your code
FROM alpine:3

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -q -O /tmp/commandlinetools-linux.zip &&\
    unzip /tmp/commandlinetools-linux.zip -d /commandlinetools

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
