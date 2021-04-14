FROM maven:3.8.1-openjdk-8
COPY . /app
WORKDIR /app
RUN mvn package -Dmaven.test.skip=true -q

FROM openjdk:8-jre
COPY --from=0 /app/start-polinoj/target/*.jar /app/main.jar
CMD ["java","-jar","/app/main.jar"]
