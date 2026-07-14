FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /workspace

COPY pom.xml ./
COPY src ./src

RUN mvn -q -DskipTests package

FROM tomcat:9.0-jdk17-temurin

ENV DB_HOST=db.cloud.local
ENV REDIS_HOST=redis.cloud.local

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=build /workspace/target/ROOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
