# Ubuntu:Trusty based container with Java, Tomcat and Magnolia CMS Core
FROM anapsix/alpine-java:8_jdk
LABEL Swamy Kottur

ENV CATALINA_HOME /opt/tomcat
ENV CATALINA_TMPDIR /tmp/tomcat
ENV PATH $PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$CATALINA_HOME/bin:$CATALINA_HOME/scripts


ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.5.31

# Install Tomcat
RUN wget http://www.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
 tar -xvf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
 rm apache-tomcat*.tar.gz && \
 mv apache-tomcat* ${CATALINA_HOME}
 
RUN chmod +x ${CATALINA_HOME}/bin/*sh

# Make sure that the temporary directory exists
RUN mkdir -p $CATALINA_TMPDIR              

# Remove all webapps from the default Tomcat installation
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy tomcat configuration files from the project to the container
COPY conf/context.xml  $CATALINA_HOME/conf/context.xml
COPY conf/setenv.sh  $CATALINA_HOME/bin/setenv.sh    

COPY magnolia-cloud-webapp/target/ROOT.war $CATALINA_HOME/webapps/ROOT.war

# Start the tomcat instance
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]
CMD [""]

# Expose the ports
EXPOSE 8080