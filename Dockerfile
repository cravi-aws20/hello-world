# Pull base image 
From tomcat:8-jre8 
CMD pwd
RUN echo $WORKDIR
RUN mkdir -p /var/lib/jenkins/new1
# Maintainer 
# COPY ./webapp/target/webapp.war /var/lib/tomcat9/webapps/webapp.war

