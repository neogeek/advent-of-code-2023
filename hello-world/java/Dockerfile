FROM arm64v8/eclipse-temurin:21-jre-ubi9-minimal

ENV JAVA_HOME=/opt/java/openjdk

COPY --from=arm64v8/eclipse-temurin:11 $JAVA_HOME $JAVA_HOME

ENV PATH="${PATH}:${JAVA_HOME}/bin"

COPY . /usr/src/app

WORKDIR /usr/src/app

CMD ["java", "./main.java"]
