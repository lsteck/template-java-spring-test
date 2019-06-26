ARG image_name
ARG image_version

FROM tomcat:9-jdk11-openjdk

COPY ./build/libs/${image_name}-${image_versoin}.war /usr/local/tomcat/webapps/ROOT.war

ENV HOST=0.0.0.0 PORT=8080

EXPOSE 8080/tcp

CMD ["catalina.sh","run"]