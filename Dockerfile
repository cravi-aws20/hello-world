# Pull base image 
From ubuntu As new
ADD . /src
WORKDIR /src
RUN mkdir new1
COPY ./webapp/target/webapp.war /src/new1/webapp.war

From tomcat:8-jre8 
CMD pwd
RUN echo $WORKDIR
COPY --from=new /src/new1/webapp.war /var/lib/tomcat9/webapps/webapp.war
 
#COPY ./webapp/target/webapp.war /var/lib/tomcat9/webapps/webapp.war

