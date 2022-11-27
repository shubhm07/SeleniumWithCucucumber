FROM openjdk:8
EXPOSE 8080
ADD target/SeleniumWithCucucumber.jar SeleniumWithCucucumber.jar
ENTRYPOINT ["java","-jar","/SeleniumWithCucucumber"]