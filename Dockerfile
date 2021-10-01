FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /src /home/app
COPY ./src /home/app/src
EXPOSE 8080
RUN mvn -f /home/app/pom.xml clean package
CMD mvn run start