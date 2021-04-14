FROM openjdk:8
COPY start-polinoj/target/*.jar /app/main.jar
CMD ["java","-jar","/app/main.jar"]