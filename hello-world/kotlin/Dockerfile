FROM arm64v8/eclipse-temurin:21-jre

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN apt-get -y update && apt-get -y install curl  unzip

ENV KOTLIN_VERSION=1.9.21

RUN cd /opt \
    && curl -LO https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip \
    && unzip kotlin-compiler-${KOTLIN_VERSION}.zip \
    && rm kotlin-compiler-${KOTLIN_VERSION}.zip

ENV PATH="${PATH}:/opt/kotlinc/bin"

CMD ["kotlinc", "./main.kts", "-script"]
