# Pull base image 
From tomcat:8-jre8 
CMD pwd
# Maintainer 
COPY ./webapp/target/webapp.war /var/lib/tomcat9/webapps/

