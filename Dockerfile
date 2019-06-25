FROM tomcat:9-jdk11-openjdk

COPY ./build/libs/${IMAGE_NAME}-${IMAGE_NAME}.war /usr/local/tomcat/webapps/ROOT.war

ENV HOST=0.0.0.0 PORT=8080

EXPOSE 8080/tcp

CMD ["catalina.sh","run"]