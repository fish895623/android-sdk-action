# Container image that runs your code
FROM alpine:3

ENV ANDROID_SDK_ROOT=/sdk

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -q -O /tmp/commandlinetools-linux.zip &&\
    unzip /tmp/commandlinetools-linux.zip -d /commandlinetools &&\
    cat /commandlinetools/cmdline-tools/lib/README

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN yes | /commandlinetools/cmdline-tools/bin/sdkmanager --licenses

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
