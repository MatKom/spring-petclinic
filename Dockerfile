FROM openjdk:8-jre-slim

COPY ./target/*.jar /app

WORKDIR /app

EXPOSE 8080

CMD [ "java", "-jar", "target/*.jar" ]
