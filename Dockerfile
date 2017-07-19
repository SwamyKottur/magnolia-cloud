# Centos based container with Java, Tomcat and Magnolia CMS Core
FROM swamykottur/magnolia-core-base:latest
MAINTAINER Swamy Kottur

# Copy tomcat configuration files from the project to the container
# COPY conf/context.xml  $CATALINA_HOME/conf/context.xml    

# ADD https://sourceforge.net/projects/magnolia/files/magnolia/Magnolia%20CE%205.5.4/magnolia-community-demo-webapp-5.5.4.war/download?use_mirror=autoselect $CATALINA_HOME/webapps/ROOT.war
COPY magnolia-cloud-webapp/target/ROOT.war $CATALINA_HOME/webapps/ROOT.war