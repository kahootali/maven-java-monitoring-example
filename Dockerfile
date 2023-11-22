FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /usr/src/app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src /usr/src/app/src
RUN mvn clean package


FROM eclipse-temurin:17.0.5_8-jre

# Set working directory
ENV HOME=/opt/app
WORKDIR $HOME

# Expose the port on which your service will run
EXPOSE 8080

# NOTE we assume there's only 1 jar in the target dir
COPY --from=build /usr/src/app/target/*.jar $HOME/artifacts/app.jar

USER 1001

ENTRYPOINT exec java $JAVA_OPTS -jar artifacts/app.jar
