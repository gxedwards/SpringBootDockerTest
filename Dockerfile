# Use an Java 8 runtime as a parent image
FROM java:8
VOLUME /tmp
ARG JAR_FILE=target/docker-demo-0.1.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


