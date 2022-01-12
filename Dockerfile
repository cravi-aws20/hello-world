# Pull base image 
From tomcat:8-jre8 
CMD pwd

# Maintainer 
COPY /var/lib/jenkins/workspace/Main_Pipeline/webapp/target/webapp.war /var/lib/tomcat9/webapps/webapp.war

