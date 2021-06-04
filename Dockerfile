FROM amazoncorretto:11
WORKDIR /metabase
ADD https://downloads.metabase.com/latest/metabase.jar ./metabase.jar
EXPOSE 3000/tcp
CMD ["java", "-jar", "./metabase.jar"]
