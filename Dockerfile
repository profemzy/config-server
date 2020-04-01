FROM  openjdk:14-alpine
VOLUME /tmp
EXPOSE 8080
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY target/HmoAppConfigServer.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]