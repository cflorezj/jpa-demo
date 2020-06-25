FROM openjdk:8-jre-alpine

ADD ./target/jpa-demo-0.0.1-SNAPSHOT.jar demo.jar

ENTRYPOINT ["java", "-Xmx512m", "-Xms256m", "-Djava.security.egd=file:/dev/./urandom", "-jar", "demo.jar"]
