FROM java:8
FROM maven:alpine

EXPOSE 8080
ADD ./target/compose-demo.jar compose-demo.jar
ENTRYPOINT ["java","-jar","compose-demo.jar"]


#WORKDIR /app
#COPY . /app
#RUN mvn -v
#RUN mvn clean install -DskipTests
#https://github.com/chathurangat/spring-boot-data-jpa-mysql-docker-composer