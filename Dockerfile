# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "cravi.aws20@gmail.com" 
COPY ./webapp.war /var/lib/tomcat9/webapps

