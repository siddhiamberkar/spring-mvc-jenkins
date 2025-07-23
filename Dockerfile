
FROM tomcat:9-jdk17-temurin-jammy

# Maintainer (optional)
LABEL maintainer="Siddhi Amberkar <your.email@example.com>"

# Remove the default webapps that come with Tomcat (optional, but good practice)
RUN rm -rf /usr/local/tomcat/webapps/*


COPY target/spring-mvc.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat runs on (default is 8080)
EXPOSE 8080


CMD ["catalina.sh", "run"]