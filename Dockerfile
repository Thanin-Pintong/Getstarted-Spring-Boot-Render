FROM thaninp2021/ubuntu-focal-jdk8-maven36:latest

ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NONINTERACTIVE_SEEN=true

COPY target/basic-spring-boot-render-1.0.0-SNAPSHOT.jar app.jar

EXPOSE 80
ENTRYPOINT ["java","-Xmx128m","-jar","/app.jar"]