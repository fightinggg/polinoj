FROM openjdk:8
COPY target/*.jar /app/main.jar
ENV JAVA_PARAM ''
ENV JVM_PARAM ''
CMD "java"  $JVM_PARAM "-jar" "/app/main.jar" $JAVA_PARAM
