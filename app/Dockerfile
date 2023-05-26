FROM openjdk:8

COPY target/spring-boot-rest-example-0.5.0.war spring-boot-rest-example-0.5.0.war

EXPOSE 8090 8091 3306

ENTRYPOINT ["java", "-jar", "/spring-boot-rest-example-0.5.0.war"]
