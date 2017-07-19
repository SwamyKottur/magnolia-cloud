# magnolia-cloud

This repo has Magnolia Parent Pom and Webapp Pom with necessary jackrabbit and magnolia properties configuration files needed to deploy Magnolia on to any cloud provider either as a Docker container or Virtual instances in a clustered fashion.

For cloud architecture refer magnolia-v4.pdf

Additionaly, a custom magnolia module has been created and can be used to build any custom module other than what Magnolia provides Out-of-the box

Also, same repo can be used to bring up development environments using Docker-Compose and/or Vagrant(recommended). Currently the development environment is supported only for Mac OS 10+ and Linux 

Offical Docker image is available at this location: https://hub.docker.com/r/swamykottur/magnolia-core-base/

Things to download for development environment 
    
    1. Install JDK 8 and add Path variable - 
    2. Install Maven and add Path variable - Example: https://www.mkyong.com/maven/install-maven-on-mac-osx/
    3. Find or Create .m2 folder under your /Users/<UserName>/ and copy the setting.xml from repo to this location
    4. Install Docker for Mac on Mac OS
    5. Install Vagrant