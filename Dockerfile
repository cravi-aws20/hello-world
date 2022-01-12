# Pull base image 
From tomcat:8-jre8 

# Maintainer 
COPY ./webapp/target/webapp.war /var/lib/tomcat9/webapps

