# Container image that runs your code
FROM alpine:3

ENV ANDROID_SDK_ROOT=/sdk
RUN apk update && apk --no-cache add openjdk8=~8.282
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -q -O /tmp/commandlinetools-linux.zip &&\
    unzip /tmp/commandlinetools-linux.zip -d /commandlinetools &&\
    rm -rf /tmp/commandlinetools-linux.zip

RUN sh -c "yes | /commandlinetools/cmdline-tools/bin/sdkmanager --sdk_root=/sdk --licenses" &&\
    sh -c '/commandlinetools/cmdline-tools/bin/sdkmanager --sdk_root=/sdk "platform-tools"'

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
