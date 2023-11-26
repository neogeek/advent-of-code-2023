FROM arm64v8/eclipse-temurin:21-jre

ENV JAVA_HOME=/opt/java/openjdk

COPY --from=arm64v8/eclipse-temurin:11 $JAVA_HOME $JAVA_HOME

ENV PATH="${PATH}:${JAVA_HOME}/bin"

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN curl -fL https://github.com/VirtusLab/coursier-m1/releases/latest/download/cs-aarch64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup -y

ENV PATH="${PATH}:/root/.local/share/coursier/bin"

CMD ["scala", "./main.scala"]
