# Pull base image 
From tomcat:8-jre8 

# Maintainer 
COPY ./webapp.war /var/lib/tomcat9/webapps

