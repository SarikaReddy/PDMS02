FROM tomcat:8.0-alpine

ADD ./target/PDMS.war /usr/local/tomcat/webapps/PDMS.war

EXPOSE 8080