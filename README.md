# maven-java-monitoring-example
Repository to show monitoring of Spring Boot Actuator Health Check, Metrics Gathering 

## Pre-Reqs:
- Maven (Tested on 3.8.5 using openjdk-17)
- Java 17


## Steps To Run:

1. Clone the repository

```
git clone https://github.com/kahootali/maven-java-monitoring-example.git
cd maven-java-monitoring-example/
```

2. Build and run the app using maven

```bash
mvn package  # it will create a target folder with the packaged jar
java -jar target/actuator-demo-0.0.1-SNAPSHOT.jar
```

Alternatively, you can run the app directly without packaging using maven directly.

```bash
mvn spring-boot:run
```

The app will start running at <http://localhost:8080>.

## Explore Actuator Endpoints

All the actuator endpoints will be available at 

- Can see all endpoints: <http://localhost:8080/actuator>
- Health: <http://localhost:8080/actuator/health>
- Prometheus: <http://localhost:8080/actuator/prometheus>
- Authenticated endpoint 

Some of the endpoints like `http://localhost:8080/slowApi/` are protected with Spring Security's HTTP Basic Authentication. You can use the username `actuator` and password `actuator` for http basic authentication.
